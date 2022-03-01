Neovim Lua Config
=================

New modular folder structure:

    ├── lua
    │   ├── nvim
    │   │   ├── colorscheme
    │   │   │   ├── init.lua
    │   │   │   ├── gruvbox.lua
    │   │   │   ├── onedark-night.lua
    │   │   │   └── ...
    │   │   ├── plugins
    │   │   │   ├── gitsigns.lua
    │   │   │   ├── lsp.lua
    │   │   │   ├── nvimtree.lua
    │   │   │   ├── packer.lua
    │   │   │   ├── treesitter.lua
    │   │   │   └── ...
    │   │   ├── init.lua
    │   │   ├── keymappings.lua
    │   │   └── settings.lua
    │   └── plugins.lua
    └── init.lua

## Plugins structure

The plugins have a base structure like this:

```lua
local M = {}

function M.config() -- Optional
  -- Make the config
end

function M.setup() -- Mandatory
  -- Set the config
end

return M
```

And all are loaders in the file `lua/nvim/init.lua`

## Colorscheme

In this folder you can define differents base color schemes and color themes,
and define the default value to be used in the rest of the modules
(i.e. lualine, etc).

## Package Manager

I'm using [packer.nvim](https://github.com/wbthomason/packer.nvim), the plugin
setting is in the `lua/nvim/plugins/packer.lua`, but the plugin definitions
are in a diferent file `lua/plugins.lua`, in this way, I split the plugin
definitions and the plugin settings.

## Screenshots

![Screenshots](./screenshots/screenshot_1.png)
![Screenshots](./screenshots/screenshot_2.png)

[MIT License](./LICENSE)
