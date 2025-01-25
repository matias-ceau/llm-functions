# Environment Variables

## Injected by `run-tool.*`/`run-agent.*`

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> e4d0347 (feat: support env var `LLM_DUMP_RESULTS` (#144))
| Name                  | Description                                                                                                                |
| --------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `LLM_ROOT_DIR`        | Path to `<llm-functions-dir>`                                                                                              |
| `LLM_TOOL_NAME`       | Tool name, such as `execute_command`                                                                                       |
| `LLM_TOOL_CACHE_DIR`  | Path to `<llm-functions-dir>/cache/<tool-name>`,<br>The tool script can use this directory to store some cache data        |
| `LLM_AGENT_NAME`      | Agent name, such as `todo`                                                                                                 |
| `LLM_AGENT_FUNC`      | Agent function, such as `list_todos`                                                                                       |
| `LLM_AGENT_ROOT_DIR`  | Path to `<llm-functions-dir>/agents/<agent-name>`                                                                          |
| `LLM_AGENT_CACHE_DIR` | Path to `<llm-functions-dir>/cache/<agent-name>`,<br>The agent tool script can use this directory to store some cache data |
<<<<<<< HEAD
=======
| Name                  | Description                                                                                                          |
| --------------------- | -------------------------------------------------------------------------------------------------------------------- |
| `LLM_ROOT_DIR`        | Path to `<llm-functions-dir>`                                                                                        |
| `LLM_TOOL_NAME`       | Tool name, such as `execute_command`                                                                                 |
| `LLM_TOOL_CACHE_DIR`  | Path to `<llm-functions-dir>/cache/<tool-name>`,<br>The tool script can use this directory to store some cache data  |
| `LLM_AGENT_NAME`      | Agent name, such as `todo`                                                                                           |
| `LLM_AGENT_FUNC`      | Agent function, such as `list_todos`                                                                                 |
| `LLM_AGENT_ROOT_DIR`  | Path to `<llm-functions-dir>/agents/<agent-name>`                                                                    |
| `LLM_AGENT_CACHE_DIR` | Path to `<llm-functions-dir>/cache/<agent-name>`,<br>The tool script can use this directory to store some cache data |
>>>>>>> f7f3b5d (refactor: add docs (#143))
=======
>>>>>>> e4d0347 (feat: support env var `LLM_DUMP_RESULTS` (#144))

## Injected by runtime (AIChat)

| Name                   | Description                                          |
| ---------------------- | ---------------------------------------------------- |
| `LLM_OUTPUT`           | File to store the the execution results of the tool. |
| `LLM_AGENT_VAR_<NAME>` | Agent variables.                                     |

## Provided by users

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 991c889 (feat(mcp): add LLM_MCP_NEED_CONFIRM and LLM_MCP_SKIP_CONFIRM (#149))
| Name                   | Description                                                                                                  |
| ---------------------- | ------------------------------------------------------------------------------------------------------------ |
| `LLM_DUMP_RESULTS`     | Controls whether to print the execution results of the tool, e.g. `get_current_weather\|fs.*\|todo:.*`, `.*` |
| `LLM_MCP_NEED_CONFIRM`| Controls whether to prompt for confirmation before executing certain tools, e.g., `git_commit\|git_reset`, `.*` . |
<<<<<<< HEAD
<<<<<<< HEAD
| `LLM_MCP_SKIP_CONFIRM`| Controls whether to bypass confirmation requests for certain tools, e.g., `git_status\|git_diff.*`, `.*` . |

> LLM-Functions supports `.env`, just put environment variables into dotenv file to make it work.
=======
| Name               | Description                                                                                   |
| ------------------ | --------------------------------------------------------------------------------------------- |
<<<<<<< HEAD
| `LLM_DUMP_RESULTS` | Controls whether to print the execution results of the tool, e.g. `get_current_weather\|fs.*` |
>>>>>>> f7f3b5d (refactor: add docs (#143))
=======
| `LLM_DUMP_RESULTS` | Controls whether to print the execution results of the tool, e.g. `get_current_weather\|fs.*\|todo:.*`, `.*` |
>>>>>>> e4d0347 (feat: support env var `LLM_DUMP_RESULTS` (#144))
=======
| `LLM_MCP_SKIP_CONFIRM`| Controls whether to bypass confirmation requests for certain tools, e.g., `git_status\|git_diff.*`, `.*` . |
>>>>>>> 991c889 (feat(mcp): add LLM_MCP_NEED_CONFIRM and LLM_MCP_SKIP_CONFIRM (#149))
=======
| `LLM_MCP_SKIP_CONFIRM`| Controls whether to bypass confirmation requests for certain tools, e.g., `git_status\|git_diff.*`, `.*` . |

> LLM-Functions supports `.env`, just put environment variables into dotenv file to make it work.
>>>>>>> eec51e1 (chore: update docs)
