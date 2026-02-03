# Aseprite extension

This set of stub files is meant to make Aseprite plugin development easier by providing autocomplete, type hints, and quick API navigation (Aseprite 1.3.16.1).

In JetBrains IDEs, I use the SumnekoLua plugin:

```
https://plugins.jetbrains.com/plugin/22315-sumnekolua
```

## What’s inside

- `src/` — stub sources (Lua annotations and API definitions)
- `dist/` — packaged `.aseprite-extension` files (generated)

## How to use stubs in JetBrains

1. Install the SumnekoLua plugin.
2. Add the `src/` folder to your project.
3. Make sure the IDE indexes the stubs (restart or re-open the project if needed).

## Optional packaging

If you want to install the stubs as an Aseprite extension, build a package:

- Windows: `.\package-extension.ps1`
- Linux/macOS: `./package-extension.sh`

The output will appear in `dist/` as a `.aseprite-extension` file.
