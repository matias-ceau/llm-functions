# MCP-Server

Let LLM-functions tools/agents be used through the Model Context Protocol.

## Serve tools

```json
{
  "mcpServers": {
    "tools": {
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
        "mcp-llm-functions",
        "<llm-functions-dir>"
=======
        "<path-to-llm-functions>/mcp/server/index.js",
        "<path-to-llm-functions>",
>>>>>>> f081b70 (feat: add mcp server)
        "<agent-name>",
      ]
    }
  }
}
```
<<<<<<< HEAD

## Environment Variables

- `AGENT_TOOLS_ONLY`: Set to `true` or `1` to ignore shared tools and display only agent tools.
=======
>>>>>>> f081b70 (feat: add mcp server)
