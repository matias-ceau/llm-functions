#!/usr/bin/env bash
set -e

ROOT_DIR="$(cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd)"
BIN_DIR="$ROOT_DIR/bin"
MCP_DIR="$ROOT_DIR/cache/__mcp__"
MCP_JSON_PATH="$ROOT_DIR/mcp.json"
FUNCTIONS_JSON_PATH="$ROOT_DIR/functions.json"
MCP_BRIDGE_PORT="${MCP_BRIDGE_PORT:-8808}"

<<<<<<< HEAD
<<<<<<< HEAD
# @cmd Start/restart the mcp bridge server
# @alias restart
=======
# @cmd Start/Restart mcp bridge server
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @cmd Start/restart the mcp bridge server
# @alias restart
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
start() {
    if [[ ! -f "$MCP_JSON_PATH" ]]; then
        _die "error: not found mcp.json"
    fi
    stop
    mkdir -p "$MCP_DIR"
    index_js="$ROOT_DIR/mcp/bridge/index.js"
    llm_functions_dir="$ROOT_DIR"
    if _is_win; then
        index_js="$(cygpath -w "$index_js")"
        llm_functions_dir="$(cygpath -w "$llm_functions_dir")"
    fi
<<<<<<< HEAD
    echo "Start MCP Bridge server..."
    nohup node  "$index_js" "$llm_functions_dir" > "$MCP_DIR/mcp-bridge.log" 2>&1 &
    wait-for-server
    echo "Merge MCP tools into functions.json"
    "$0" merge-functions -S
    build-bin
}

# @cmd Stop the mcp bridge server
=======
    echo "Run MCP Bridge server"
    nohup node  "$index_js" "$llm_functions_dir" > "$MCP_DIR/mcp-bridge.log" 2>&1 &
    wait-for-server
    echo "Merge MCP tools into functions.json"
    "$0" merge-functions -S
    build-bin
}

<<<<<<< HEAD
# @cmd Stop mcp bridge server
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @cmd Stop the mcp bridge server
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
stop() {
    pid="$(get-server-pid)"
    if [[ -n "$pid" ]]; then
        if _is_win; then
            taskkill /PID "$pid" /F > /dev/null 2>&1 || true
        else
            kill -9 "$pid" > /dev/null 2>&1 || true
        fi
    fi
<<<<<<< HEAD
<<<<<<< HEAD
    "$0" recovery-functions -S
}

# @cmd Run the mcp tool
<<<<<<< HEAD
# @arg tool![`_choice_tool`] The tool name
# @arg json The json data
run@tool() {
    if [[ -z "$argc_json" ]]; then
        declaration="$(generate-declarations | jq --arg tool "$argc_tool" -r '.[] | select(.name == $tool)')"
=======
    mkdir -p "$MCP_DIR"
    unmerge-functions > "$MCP_DIR/functions.original.json"
    cp -f "$MCP_DIR/functions.original.json" "$FUNCTIONS_JSON_PATH"
=======
    "$0" recovery-functions -S
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
}

# @cmd Run the tool
=======
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
# @arg tool![`_choice_tool`] The tool name
# @arg json The json data
run@tool() {
    if [[ -z "$argc_json" ]]; then
<<<<<<< HEAD
        declaration="$(build-declarations | jq --arg tool "$argc_tool" -r '.[] | select(.name == $tool)')"
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
        declaration="$(generate-declarations | jq --arg tool "$argc_tool" -r '.[] | select(.name == $tool)')"
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
        if [[ -n "$declaration" ]]; then
            _ask_json_data "$declaration"
        fi
    fi
    if [[ -z "$argc_json" ]]; then
        _die "error: no JSON data"
    fi
    bash "$ROOT_DIR/scripts/run-mcp-tool.sh" "$argc_tool" "$argc_json"
}

<<<<<<< HEAD
<<<<<<< HEAD
# @cmd Show the logs
=======
# @cmd Show logs
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @cmd Show the logs
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
# @flag -f --follow Follow mode
logs() {
    args=""
    if [[ -n "$argc_follow" ]]; then
        args="$args -f"
    fi
    if [[ -f "$MCP_DIR/mcp-bridge.log" ]]; then
        tail $args "$MCP_DIR/mcp-bridge.log"
    fi
}

# @cmd Build tools to bin
build-bin() {
<<<<<<< HEAD
<<<<<<< HEAD
    tools=( $(generate-declarations | jq -r '.[].name') )
=======
    tools=( $(build-declarations | jq -r '.[].name') )
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
    tools=( $(generate-declarations | jq -r '.[].name') )
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
    for tool in "${tools[@]}"; do
        if _is_win; then
            bin_file="$BIN_DIR/$tool.cmd"
            _build_win_shim > "$bin_file"
        else
            bin_file="$BIN_DIR/$tool"
            ln -s -f "$ROOT_DIR/scripts/run-mcp-tool.sh" "$bin_file"
        fi
        echo "Build bin/$tool"
    done
}

# @cmd Merge mcp tools into functions.json
<<<<<<< HEAD
<<<<<<< HEAD
# @flag -S --save Save to functions.json
merge-functions() {
    result="$(jq --argjson json1 "$("$0" recovery-functions)" --argjson json2 "$(generate-declarations)" -n '($json1 + $json2)')"
    if [[ -n "$argc_save" ]]; then
        printf "%s" "$result" > "$FUNCTIONS_JSON_PATH"
    else
        printf "%s" "$result"
    fi
}

# @cmd Unmerge mcp tools from functions.json
# @flag -S --save Save to functions.json
recovery-functions() {
=======
=======
# @flag -S --save Save to functions.json
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
merge-functions() {
    result="$(jq --argjson json1 "$("$0" recovery-functions)" --argjson json2 "$(build-declarations)" -n '($json1 + $json2)')"
    if [[ -n "$argc_save" ]]; then
        printf "%s" "$result" > "$FUNCTIONS_JSON_PATH"
    else
        printf "%s" "$result"
    fi
}

# @cmd Unmerge mcp tools from functions.json
<<<<<<< HEAD
unmerge-functions() {
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @flag -S --save Save to functions.json
recovery-functions() {
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
    functions="[]"
    if [[ -f  "$FUNCTIONS_JSON_PATH" ]]; then
        functions="$(cat "$FUNCTIONS_JSON_PATH")"
    fi
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
    result="$(printf "%s" "$functions" | jq 'map(select(has("mcp") | not))')"
    if [[ -n "$argc_save" ]]; then
        printf "%s" "$result" > "$FUNCTIONS_JSON_PATH"
    else
        printf "%s" "$result"
    fi
<<<<<<< HEAD
}

# @cmd Generate function declarations for the mcp tools
generate-declarations() {
    curl -sS http://localhost:$MCP_BRIDGE_PORT/tools
}

# @cmd Wait for the mcp bridge server to ready
=======
    printf "%s" "$functions" | jq 'map(select(has("mcp") | not))'
=======
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
}

# @cmd Generate function declarations for the mcp tools
generate-declarations() {
    curl -sS http://localhost:$MCP_BRIDGE_PORT/tools | jq '.[] |= . + {mcp: true}'
}

<<<<<<< HEAD
# @cmd Wait for mcp bridge server to ready
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @cmd Wait for the mcp bridge server to ready
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
wait-for-server() {
    while true; do
        if [[ "$(curl -fsS http://localhost:$MCP_BRIDGE_PORT/health 2>&1)" == "OK" ]]; then
            break;
        fi
        sleep 1
    done
}

<<<<<<< HEAD
<<<<<<< HEAD
# @cmd Get the server pid
=======
# @cmd
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
# @cmd Get the server pid
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
get-server-pid() {
    curl -fsSL http://localhost:$MCP_BRIDGE_PORT/pid 2>/dev/null || true
}

_ask_json_data() {
    declaration="$1"
    echo 'Missing the JSON data but here are its properties:'
    echo "$declaration" | ./scripts/declarations-util.sh pretty-print | sed -n '2,$s/^/>/p'
    echo 'Generate placeholder data:'
    data="$(echo "$declaration" | _declarations_json_data)"
    echo ">  $data"
    read -e -r -p 'JSON data (Press ENTER to use placeholder): ' res
    if [[ -z "$res" ]]; then
        argc_json="$data"
    else
        argc_json="$res"
    fi
}

_declarations_json_data() {
   ./scripts/declarations-util.sh generate-json | tail -n +2
}

_build_win_shim() {
    run="\"$(argc --argc-shell-path)\" --noprofile --norc"
    cat <<-EOF
@echo off
setlocal

set "bin_dir=%~dp0"
for %%i in ("%bin_dir:~0,-1%") do set "script_dir=%%~dpi"
set "script_name=%~n0"

$run "%script_dir%scripts\run-mcp-tool.sh" "%script_name%" %*
EOF
}

_is_win() {
    if [[ "$OS" == "Windows_NT" ]]; then
        return 0
    else
        return 1
    fi
}

_choice_tool() {
<<<<<<< HEAD
<<<<<<< HEAD
    generate-declarations | jq -r '.[].name'
=======
    build-declarations | jq -r '.[].name'
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
    generate-declarations | jq -r '.[].name'
>>>>>>> e0d7a9e (refactor: add docs and update scripts (#150))
}

_die() {
    echo "$*" >&2
    exit 1
}

# See more details at https://github.com/sigoden/argc
eval "$(argc --argc-eval "$0" "$@")"
