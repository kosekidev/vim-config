# My NVim config

Simple NVim config using lazy.vim as package manager.

You need install a nerd font : [Nerd Fonts](https://www.nerdfonts.com/)

![image](https://github.com/KosekiDev/vim_config/assets/62622114/39d301ec-9402-4b55-b300-1c797a075480)

![image](https://github.com/KosekiDev/vim_config/assets/62622114/e29aecf2-9f4a-46e7-9c42-6eefc6bf5357)

![image](https://github.com/KosekiDev/vim_config/assets/62622114/1d2dc141-62e5-4203-a46e-f169035aefab)

![image](https://github.com/KosekiDev/vim_config/assets/62622114/b228b64a-9e53-429c-872b-8547cc3d69d4)

![image](https://github.com/KosekiDev/vim_config/assets/62622114/de47d355-b6e8-4977-b653-1ddd53ada4a9)

## Dependencies

This configuration use [Lazygit](https://github.com/jesseduffield/lazygit), you need to install it.

Treesitter required to install some things, you can go to the [git repository](https://github.com/nvim-treesitter/nvim-treesitter) to check what need to be installed.

For telescope plugin, we also need to install [fd](https://github.com/sharkdp/fd), [rg](https://github.com/BurntSushi/ripgrep) and [fzf](https://github.com/nvim-telescope/telescope-fzf-native.nvim).

I also use Tmux a lot, so some parts of this configuration use it. You can find my Tmux config [here](https://github.com/KosekiDev/TmuxConfig).

After that, do :checkhealth to check if you have all required dependencies.

## Util. keymaps

| Mode | Keymap       | Description                                                       |
| ---- | ------------ | ----------------------------------------------------------------- |
| n, v | `<leader>y`  | Yank in system clipboard                                          |
| n    | `<leader>Y`  | Yank from cursor to the end of the line in system clipboard       |
| n, v | `<leader>d`  | Delete the selection/object in the black hole register            |
| x    | `<leader>p`  | Delete the selection/object in the black hole register then paste |
| n    | `<leader>r`  | Replace word under the cursor                                     |
| n    | `<leader>ct` | Toggle dark/light theme                                           |
| n    | `Y`          | Yank from cursor to end of line                                   |
| v    | `J`          | Move selection down                                               |
| v    | `K`          | Move selection up                                                 |
| n    | `<C-H>`      | Move cursor to the left window / tmux window                      |
| n    | `<C-L>`      | Move cursor to the right window / tmux window                     |
| n    | `<C-J>`      | Move cursor to the bottom window / tmux window                    |
| n    | `<C-K>`      | Move cursor to the top window / tmux window                       |
| n    | `<C-S>`      | Reduce pane width                                                 |
| n    | `<C-_>`      | Increase pane width                                               |
| n    | `<leader>w`  | Open new cwd tmux window                                          |

## [lazy.vim](https://github.com/folke/lazy.nvim)

| Mode | Keymap      | Description           |
| ---- | ----------- | --------------------- |
| n    | `<leader>l` | Open lazy-vim manager |

## [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

Configs for the Nvim LSP Client

| Mode | Keymap       | Description         |
| ---- | ------------ | ------------------- |
| n    | `<leader>cl` | LSP Info            |
| n    | `<leader>vd` | Line diagnostics    |
| n    | `<leader>ca` | Code Action         |
| n    | `<leader>cr` | Rename              |
| i    | `<C-H>`      | Signature Help      |
| n    | `gK`         | Signature Help      |
| n    | `gd`         | Goto definition     |
| n    | `gr`         | References          |
| n    | `K`          | Hover               |
| n    | `]d`         | Next Diagnostic     |
| n    | `[d`         | Previous Diagnostic |
| n    | `]e`         | Next Error          |
| n    | `[e`         | Previous Error      |
| n    | `]w`         | Next Warning        |
| n    | `[w`         | Previous Warning    |

## [Conform.nvim](https://github.com/stevearc/conform.nvim)

Lightweight yet powerful formatter plugin for Neovim

## [build_script](https://github.com/KosekiDev/build_script)

Open a quicklist with project's build script to run.

| Mode | Keymap       | Description                                                               |
| ---- | ------------ | ------------------------------------------------------------------------- |
| n    | `<leader>bs` | Open build script quicklist then run choosen command in a new tmux window |

## [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)

Getting you where you want with the fewest keystrokes.

| Mode | Keymap       | Description                       |
| ---- | ------------ | --------------------------------- |
| n    | `<leader>ha` | Add current file to Harpoon list  |
| n    | `<leader>ho` | Open Harpoon quick menu           |
| n    | `<C-N>`      | Navigate to the next harpoon file |
| n    | `<C-P>`      | Navigate to the prev harpoon file |

## [Flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim)

Build flutter and dart applications in neovim using the native LSP.

## [Mason](https://github.com/williamboman/mason.nvim)

Portable package manager for Neovim that runs everywhere Neovim runs.
Easily install and manage LSP servers, DAP servers, linters, and formatters.

| Mode | Keymap       | Description        |
| ---- | ------------ | ------------------ |
| n    | `<leader>cm` | Open Mason manager |

## [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

Lua snippets plugin

## [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

Snippets collection for a set of different programming languages.

## [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

A completion engine plugin for neovim written in Lua.

| Mode | Keymap      | Description     |
| ---- | ----------- | --------------- |
| n    | `<C-f>`     | Scroll forward  |
| n    | `<C-b>`     | Scroll backward |
| n    | `<C-Space>` | Complete        |
| n    | `<C-e>`     | Abort           |
| n    | `<C-Y>`     | Confirm         |

## [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it.

## [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)

Syntax aware text-objects, select, move, swap, and peek support.

| Mode | Keymap | Description                   |
| ---- | ------ | ----------------------------- |
| n    | `]f`   | Go to next start function     |
| n    | `]F`   | Go to next end function       |
| n    | `[f`   | Go to previous start function |
| n    | `[F`   | Go to previous end function   |

## [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

Telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.

| Mode | Keymap       | Description              |
| ---- | ------------ | ------------------------ |
| n    | `<leader>ff` | Find files               |
| n    | `<leader>:`  | Command history          |
| n    | `<leader>fb` | Files Buffers            |
| n    | `<leader>fr` | Recents files            |
| n    | `<leader>sd` | Diagnostics              |
| n    | `<leader>sD` | Diagnostics in workspace |
| n    | `<leader>fg` | Grep files               |
| n    | `<leader>sh` | Help pages               |
| n    | `<leader>sH` | Search Highlight groups  |
| n    | `<leader>sk` | Key Maps                 |
| n    | `<leader>sM` | Man Pages                |
| n    | `<leader>sm` | Jump to Mark             |
| n    | `<leader>ss` | Goto symbol              |
| n    | `<leader>sS` | Goto symbol in workspace |

## [telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)

telescope-file-browser.nvim is a file browser extension for telescope.nvim. It supports synchronized creation, deletion, renaming, and moving of files and folders powered by telescope.nvim and plenary.nvim.

| Mode | Key         | Description                          |
| ---- | ----------- | ------------------------------------ |
| n    | `<leader>e` | Open file browser                    |
| n    | `<leader>E` | Open file browser (ignore gitignore) |

| Mode | Key      | Description        |
| ---- | -------- | ------------------ |
| i    | `<C-c>`  | Create             |
| i    | `<C-r>`  | Rename             |
| i    | `<C-x>`  | Remove             |
| i    | `<C-o>`  | Open               |
| i    | `<C-g>`  | Goto_parent_dir    |
| i    | `<C-e>`  | Goto_home_dir      |
| i    | `<C-w>`  | Goto_cwd           |
| i    | `<C-t>`  | Change_cwd         |
| i    | `<C-f>`  | Toggle_browser     |
| i    | `<C-h>`  | Toggle_hidden      |
| i    | `<C-s>`  | Toggle_all         |
| i    | `<A-y>`  | Copy               |
| i    | `<S-CR>` | Create_from_prompt |
| i    | `<bs>`   | Backspace          |
| n    | `c`      | Create             |
| n    | `r`      | Rename             |
| n    | `m`      | Move               |
| n    | `y`      | Copy               |
| n    | `d`      | Remove             |
| n    | `o`      | Open               |
| n    | `g`      | Goto_parent_dir    |
| n    | `e`      | Goto_home_dir      |
| n    | `w`      | Goto_cwd           |
| n    | `t`      | Change_cwd         |
| n    | `f`      | Toggle_browser     |
| n    | `h`      | Toggle_hidden      |
| n    | `s`      | Toggle_all         |

## [Lualine](https://github.com/nvim-lualine/lualine.nvim)

A blazing fast and easy to configure Neovim statusline written in Lua.

## [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)

VSCode theme for nvim

## [Lazygit](https://github.com/kdheepak/lazygit.nvim)

Plugin for calling lazygit from within neovim.

| Mode | Keymap       | Description |
| ---- | ------------ | ----------- |
| n    | `<leader>gs` | Open Laygit |

## [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)

Super fast git decorations implemented purely in Lua.

## [undotree](https://github.com/mbbill/undotree)

Undotree visualizes the undo history and makes it easy to browse and switch between different undo branches.

| Mode | Keymap      | Description   |
| ---- | ----------- | ------------- |
| n    | `<leader>u` | Open Undotree |

## [mini.comment](https://github.com/echasnovski/mini.comment)

Easy comments

| Mode | Keymap | Description          |
| ---- | ------ | -------------------- |
| n    | `gcc`  | Comment current line |
| v    | `gc`   | Comment selection    |

## [mini.ai](https://github.com/echasnovski/mini.ai)

It enhances some builtin textobjects, creates new ones, and allows user to create their own (like based on treesitter, and more).
Supports dot-repeat, v:count, different search methods, consecutive application, and customization via Lua patterns or functions.
Has builtins for brackets, quotes, function call, argument, tag, user prompt, and any punctuation/digit/whitespace character.

| Key | Description               |
| --- | ------------------------- |
| a   | Parameter/argument object |
| f   | Function object           |
| c   | Class object              |

Example :

vaf : Select around a function

vic : Select inside a class

daa : Delete a parameter

## [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

Use treesitter to autoclose and autorename html tag.

## [noice.nvim](https://github.com/folke/noice.nvim)

Message plugin

| Mode | Keymap        | Description        |
| ---- | ------------- | ------------------ |
| n    | `<leader>snl` | Noice last message |
| n    | `<leader>snh` | Noice history      |
| n    | `<leader>sna` | Noice all          |
| n    | `<C-F>`       | Scroll forward     |
| n    | `<C-B>`       | Scroll backward    |

## [nvim-notify](https://github.com/rcarriga/nvim-notify)

Notification manager

| Mode | Keymap       | Description              |
| ---- | ------------ | ------------------------ |
| n    | `<leader>nd` | Delete all notifications |

## [nui.nvim](https://github.com/MunifTanjim/nui.nvim)

Ui component library

## [vim-repeat](https://github.com/tpope/vim-repeat)

If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.

## [vim-surround](https://github.com/tpope/vim-surround)

Surround.vim is all about "~": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

## [dressing.nvim](https://github.com/stevearc/dressing.nvim)

Pimp ui

## [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

Todo-comments is a lua plugin for Neovim 0.5 to highlight and search for todo comments like TODO, HACK, BUG in your code base.

| Mode | Keymap       | Description           |
| ---- | ------------ | --------------------- |
| n    | `]t`         | Next todo comment     |
| n    | `[t`         | Previous todo comment |
| n    | `<leader>st` | Todo                  |
| n    | `<leader>sT` | Todo/Fix/Fixme        |

## [nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)

The plugin is a rewrite of Christoomey's Vim Tmux Navigator, with a few added benefits

## [nvim-dap](https://github.com/mfussenegger/nvim-dap)

nvim-dap is a Debug Adapter Protocol client implementation for Neovim. nvim-dap allows you to:

Launch an application to debug
Attach to running applications and debug them
Set breakpoints and step through code
Inspect the state of the application

## [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)

A UI for nvim-dap which provides a good out of the box configuration.

| Mode | Keymap       | Description             |
| ---- | ------------ | ----------------------- |
| n    | `<leader>dB` | Breakpoint condition    |
| n    | `<leader>db` | Toggle breakpoint       |
| n    | `<leader>dc` | Continue                |
| n    | `<leader>dC` | Run to Cursor           |
| n    | `<leader>dg` | Go to line (No execute) |
| n    | `<leader>di` | Step into               |
| n    | `<leader>dj` | Down                    |
| n    | `<leader>dk` | Up                      |
| n    | `<leader>dl` | Run last                |
| n    | `<leader>do` | Step out                |
| n    | `<leader>dO` | Step over               |
| n    | `<leader>dp` | Pause                   |
| n    | `<leader>dr` | Toggle REPL             |
| n    | `<leader>ds` | Session                 |
| n    | `<leader>dt` | Terminate               |
| n    | `<leader>dw` | Widgets                 |

## [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)

This plugin adds virtual text support to nvim-dap. nvim-treesitter is used to find variable definitions.

## [nvim-dap-vscode-js](https://github.com/mxsdev/nvim-dap-vscode-js)

nvim-dap adapter for vscode-js-debug.

To install it, you can run the following commands(mac and linux) :

```
git clone https://github.com/microsoft/vscode-js-debug ~/.dap-nvim/js-debug-adapter
cd ~/.dap-nvim/js-debug-adapter
npm install --legacy-peer-deps
npx gulp vsDebugServerBundle
mv dist out
```
