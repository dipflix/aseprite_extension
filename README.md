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

## Donate

If you want to support this project, you can send a donation to the address below.

USDT (ERC20 / Ethereum): `0xba47307f0fbc0872d0368b425db52965f1a2eccd`

USDT (Solana / SPL): `9BEWhkbi7odtxC9xdeNHkrh97o4usnF52bPKLJxH3w3D`

USDT (TON): `UQDFqU5LMc9BUQ92fPtPMEv5HU0y1GWDWcSPPhFZb-_IlGLk`
