# MCP-Bridge

<<<<<<< HEAD
<<<<<<< HEAD
Let external MCP tools be used by LLM-Functions.

## Get Started

### 1. Create a `mpc.json` at `<llm-functions-dir>`.
<<<<<<< HEAD
=======
Let MCP tools be used by LLM functions.
=======
Let external MCP tools be used by LLM-Functions.
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))

## Get Started

1. Create a `mpc.json` at `<llm-functions-dir>`.
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
>>>>>>> 9f8528d (feat(mcp): add `prefix` filed to  bridge server configuraiton (#148))

```json
{
  "mcpServers": {
    "sqlite": {
      "command": "uvx",
      "args": [
        "mcp-server-sqlite",
        "--db-path",
        "/tmp/foo.db"
      ]
    },
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 9f8528d (feat(mcp): add `prefix` filed to  bridge server configuraiton (#148))
    "git": {
      "command": "uvx",
      "args": [
        "mcp-server-git",
        "--repository",
        "path/to/git/repo"
      ],
      "prefix": false
    },
<<<<<<< HEAD
=======
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
>>>>>>> 9f8528d (feat(mcp): add `prefix` filed to  bridge server configuraiton (#148))
    "github": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-github"
      ],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "<YOUR_TOKEN>"
      }
    }
  }
}
```

<<<<<<< HEAD
<<<<<<< HEAD
> MCP-Bridge will launch the server and register all the tools listed by the server. 

> To avoid name clashes, The server automatically prefix tool names with `<server>_`. You can disable this behavior by add `prefix: false` to server configuration.

### 2. Run the bridge server, build mcp tool binaries, update functions.json, all with:
=======
> MCP-Bridge will launch the server and register all the tools listed by the server. The tool identifier will be `server_toolname` to avoid clashes.

2. Run the bridge server, build mcp tool binaries, update functions.json, all with:
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
> MCP-Bridge will launch the server and register all the tools listed by the server. 

> To avoid name clashes, The server automatically prefix tool names with `<server>_`. You can disable this behavior by add `prefix: false` to server configuration.

### 2. Run the bridge server, build mcp tool binaries, update functions.json, all with:
>>>>>>> 9f8528d (feat(mcp): add `prefix` filed to  bridge server configuraiton (#148))

```
argc mcp start
```

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
> Run `argc mcp stop` to stop the bridge server, recover functions.json.

> Run `argc mcp logs` to check the server's logs.
=======
> Run `argc mcp stop` to stop the bridge server, recover functions.json
>>>>>>> eda0a72 (feat: support MCP bridge (#140))
=======
> Run `argc mcp stop` to stop the bridge server, recover functions.json
> Run `argc mcp logs` to check the server's logs.
>>>>>>> 218ad47 (refactor(mcp): improve docs and script (#146))
=======
> Run `argc mcp stop` to stop the bridge server, recover functions.json.

> Run `argc mcp logs` to check the server's logs.
>>>>>>> e85f8dd (chore: update mcp docs (#147))
