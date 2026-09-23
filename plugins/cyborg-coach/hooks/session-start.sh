#!/bin/bash
# macOS-only static context bootstrap. No event-input consumption or participant IO.
# The host's anchored matcher owns event filtering; stdin is deliberately ignored.
# Bash and uname ship with macOS. No optional runtime is required.

[ -x /usr/bin/uname ] || exit 0
[ "$(/usr/bin/uname -s 2>/dev/null)" = Darwin ] || exit 0
case "${CLAUDE_PLUGIN_ROOT:-}" in /*) ;; *) exit 0 ;; esac
coach_root=${CLAUDE_PLUGIN_ROOT%/}
coach_asset="$coach_root/hooks/bootstrap.md"
[ -f "$coach_asset" ] && [ -r "$coach_asset" ] && [ ! -L "$coach_asset" ] || exit 0

coach_context=''
while IFS= read -r coach_line || [ -n "$coach_line" ]; do
    coach_context="$coach_context$coach_line"$'\n'
done 2>/dev/null < "$coach_asset"
[ -n "$coach_context" ] || exit 0
# Fail closed before emitting anything if an accidentally oversized asset ships.
[ "${#coach_context}" -le 6000 ] || exit 0

# Escape every JSON control character, not just tabs/newlines. No eval, external
# serializer, interpolation of event fields, cd, writes, network or subprocesses
# other than the fixed platform probe above.
coach_json_string() {
    local coach_text="$1" coach_char coach_code coach_out='' coach_index
    local LC_ALL=C
    for ((coach_index=0; coach_index<${#coach_text}; coach_index++)); do
        coach_char=${coach_text:coach_index:1}
        case "$coach_char" in
            '"') coach_out+='\"' ;;
            '\') coach_out+='\\' ;;
            *)
                printf -v coach_code '%d' "'$coach_char"
                if ((coach_code >= 0 && coach_code < 32)); then
                    printf -v coach_char '\\u%04x' "$coach_code"
                fi
                coach_out+="$coach_char"
                ;;
        esac
    done
    printf '"%s"' "$coach_out"
}

# Encode the path as data inside the context, then encode the complete context.
# The resolved package path enters model context; disclose this in privacy notes.
coach_context+=$'\nPackage root (JSON-encoded path): '
coach_context+="$(coach_json_string "$coach_root")"
coach_encoded=$(coach_json_string "$coach_context") || exit 0
printf '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":%s}}\n' "$coach_encoded"
exit 0
