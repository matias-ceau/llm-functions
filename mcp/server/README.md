# MCP-Server

Let LLM-functions tools/agents be used through the Model Context Protocol.

## Serve tools

```json
{
  "mcpServers": {
    "tools": {
<<<<<<< HEAD
<<<<<<< HEAD
      "command": "npx",
      "args": [
        "mcp-llm-functions",
        "<llm-functions-dir>"
=======
      "command": "node",
      "args": [
        "<path-to-llm-functions>/mcp/server/index.js",
        "<path-to-llm-functions>"
>>>>>>> f081b70 (feat: add mcp server)
=======
      "command": "npx",
      "args": [
        "mcp-llm-functions",
        "<llm-functions-dir>"
>>>>>>> ecf6af4 (feat(mcp-server): support env var `AGENT_TOOLS_ONLY` (#145))
      ]
    }
  }
}
```

## Serve the agent

```json
{
  "mcpServers": {
    "<agent-name>": {
      "command": "node",
      "args": [
<<<<<<< HEAD
<<<<<<< HEAD
        "mcp-llm-functions",
        "<llm-functions-dir>"
=======
        "<path-to-llm-functions>/mcp/server/index.js",
        "<path-to-llm-functions>",
>>>>>>> f081b70 (feat: add mcp server)
=======
        "mcp-llm-functions",
        "<llm-functions-dir>"
>>>>>>> ecf6af4 (feat(mcp-server): support env var `AGENT_TOOLS_ONLY` (#145))
        "<agent-name>",
      ]
    }
  }
}
```
<<<<<<< HEAD
<<<<<<< HEAD

## Environment Variables

- `AGENT_TOOLS_ONLY`: Set to `true` or `1` to ignore shared tools and display only agent tools.
=======
>>>>>>> f081b70 (feat: add mcp server)
=======

## Environment Variables

- `AGENT_TOOLS_ONLY`: Set to `true` or `1` to ignore shared tools and display only agent tools.
>>>>>>> ecf6af4 (feat(mcp-server): support env var `AGENT_TOOLS_ONLY` (#145))
