Neovim Lua Config
=================

Folder structure:

    ├── lua
    │   ├── config
    │   │   ├── commons.lua
    │   │   ├── init.lua
    │   │   ├── keymaps.lua
    │   │   └── lazy.lua
    │   └── plugins
    │       ├── langs
    │       │   ├── crystal.lua
    │       │   ├── go.lua
    │       │   ├── hurl.lua
    │       │   └── typst.lua
    │       ├── lsp
    │       │   ├── lspconfig.lua
    │       │   └── mason.lua
    │       ├── autopairs.lua
    │       ├── cmp.lua
    │       ├── colorizer.lua
    │       ├── colorscheme.lua
    │       └── ...
    ├── init.lua
    └── spell
        ├── en.utf-8.sug
        └── es.utf-8.spl

## Package Manager

I'm using [lazy.nvim](https://github.com/folke/lazy.nvim).

[MIT License](./LICENSE)
