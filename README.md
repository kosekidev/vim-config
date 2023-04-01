# My NVim config

Simple NVim config using LazyVim.

You need install a nerd font : [Nerd Fonts](https://www.nerdfonts.com/)

## Personal keymaps

- Leader u : Open Undotree
- J (in visual mode) : move selection down
- K (in visual mode) : move selection up
- Y : Yank from cursor to end of line
- Leader d : Delete the selection/object in the black hole register
- Leader p : Delete the selection/object in the black hole register then paste
- Leader y (or Y) : Yank in system clipboard

## LSP keymaps

- Leader cd : Line diagnostics
- Leader cl : LSP Info
- Leader cf : Format Document
- Leader cf (visual mode) : Format Range
- Leader ca : Code Action
- Leader cA : Source Action
- Leader cr : Rename
- Ctrl + k : Signature Help
- gd : Goto definition
- gr : References
- gD : Goto Declaration
- gI : Goto Implementation
- gt : Goto Type Definition
- K : Hover
- gK : Signature Help
- ]d : Next Diagnostic
- [d : Previous Diagnostic
- ]e : Next Error
- [e : Previous Error
- ]w : Next Warning
- [w : Previous Warning

## Navigation keymaps

- Leader ss : Jump to a function in the current buffer
- Ctrl + o and Ctrl + i : Navigate to another opened buffer

### Harpoon personal shortcuts

- Ctrl + e : toggle the files list
- Leader a : Add file to harpoon
- Ctrl + Shift + H : Go to the first file
- Ctrl + Shift + J : Go to the second file
- Ctrl + Shift + K : Go to the third file
- Ctrl + Shift + L : Go to the fourth file

## Plugins

- [LazyVim](https://github.com/LazyVim/LazyVim)
  - Base of this config
    - Leader l : Open lazy-vim manager
    - Ctrl + h : Go to left window
    - Ctrl + j : Go to lower window
    - Ctrl + k : Go to upper window
    - Ctrl + l : Go to right window
    - Ctrl + s : Save file
    - Leader qq : Quit all
    - Leader ft (or fT) : Terminal
    - Esc + Esc : Enter Normal mode
    - Leader ww : Other window
    - Leader wd : Delete window
    - Leader - : Split window below
    - Leader | : Split window right
- [Harpoon](https://github.com/theprimeagen/harpoon)
  - Jump blazingly fast over files:
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
  - Status line
- [Mason](https://github.com/williamboman/mason.nvim)
  - Package manager for LSP, DAP, linters and formatters.
- [mini.comment](https://github.com/echasnovski/mini.comment)
  - Easy comments
    - gc : Comment object or selection
    - gcc : Comment current line
- [mini.pairs](https://github.com/echasnovski/mini.pairs)
  - Autopair plugin (like "", '', (), {} etc...)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
  - Files browser
    - Leader e (or E) : Toggle neotree
- [noice.nvim](https://github.com/folke/noice.nvim)
  - Message plugin
    - Leader snl : Noice last message
    - Leader snh : Noice history
    - Leader sna : Noice all
    - Ctrl + f : Scroll forward
    - Ctrl + b : Scroll backward
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
  - Ui component library
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
  - Notification manager
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - Parser
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
  - Use treesitter to autoclose and autorename htmltag
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
  - Give devicons power
- [targets.vim](https://github.com/wellle/targets.vim)
  - Add text objects
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
  - Very useful plugin about terminals
    - Ctrl \ : Toggle terminal
    - ToggleTerm X : Toggle terminal number X
- [undotree](https://github.com/mbbill/undotree)
  - Modification history with the possibility to undo what we need, very useful
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - Git decoration
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - Git plugin
    - :G : Open the git manager
- [vim-repeat](https://github.com/tpope/vim-repeat)
  - Add support to the . repeat command with other plugins like vim-surround
- [vim-surround](https://github.com/tpope/vim-surround)
  - Easy surrounding
    - cs, ds, ys : For change surrounding, delete surrounding and add surrounding
- [vscode.nvim](https://github.com/Mofiqul/vscode.nvim)
  - Colorscheme that looks like VsCode
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - Lua snippets
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
  - Snippets collection
- [dressing.nvim](https://github.com/stevearc/dressing.nvim)
  - Pimp ui
- [neoconf.nvim](https://github.com/folke/neoconf.nvim)
  - Project manager
- [neodev.nvim](https://github.com/folke/neodev.nvim)
  - Add signature help, docs and completion
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
  - Inject LSP diagnostics, code actions etc...
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - Completion plugin
- [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
  - Search panel
    - Leader sr : Open spectre
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
  - Extandable fuzzy finder
    - Leader space : Find files
    - Leader / : Find in files
    - Leader : (or sc) : Command history
    - Leader fb : Files Buffers
    - Leader fr : Recents
    - Leader gc : Commits
    - Leader gs : Status
    - Leader sa : Auto Commands
    - Leader sb : Search in current Buffer
    - Leader sC : Commands
    - Leader sd : diagnostics
    - Leader sg : Grep
    - Leader sh : Help pages
    - Leader sH : Search Highlight groups
    - Leader sk : Key Maps
    - Leader sM : Man Pages
    - Leader sm : Jump to Mark
    - Leader so : Options
    - Leader sR : Resume
    - Leader sw : Find Word
    - Leader uC : Colorscheme with preview
    - Leader ss : Goto symbol
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
  - Highlight and search for todo comments like TODO, FIX etc...
    - ]t : Next todo comment
    - [t : Previous todo comment
    - Leader xt : Todo (Trouble)
    - Leader xT : Todo/Fix/Fixme (Trouble)
    - Leader st : Todo
- [trouble.nvim](https://github.com/folke/trouble.nvim)
  - List diagnostics, references, telescope results, quickfix and location lists
    - Leader xx : Document diagnostics
    - Leader xL : Location list
    - leader xQ : Quickfix list
    - [q : previous trouble/quickfix item
    - ]q : next trouble/quickfix item
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
  - Highlighting other uses of the word under the cursor
- [vim-startuptime](https://github.com/dstein64/vim-startuptime)
  - Give startup timing informations
    - :StartupTime
