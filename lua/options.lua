local option = vim.opt

-- Bar for writing on the left
option.colorcolumn = '80'

-- Make line numbers default
option.number = true
option.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
option.mouse = 'a'

-- Don't show the mode, since it's already in the status line
option.showmode = false

-- Sync clipboard between OS and Neovim.
-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
  option.clipboard = 'unnamedplus'
end)

-- Enable break indent
option.breakindent = false

-- Save undo history
option.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
option.ignorecase = true
option.smartcase = true

-- Highlight searching only when typing
option.hlsearch = false
option.incsearch = true

-- Keep signcolumn on by default
option.signcolumn = 'yes'

-- Decrease update time
option.updatetime = 250

-- Decrease mapped sequence wait time
option.timeoutlen = 300

-- Configure how new splits should be opened
option.splitright = true
option.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
option.list = true
option.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
option.inccommand = 'split'

-- Show which line your cursor is on
option.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
option.scrolloff = 10

-- Merlin for Ocaml
vim.g.opamshare = (io.popen('opam config var share'):read '*a'):gsub('\n$', '')
option.rtp:append(vim.g.opamshare .. '/merlin/vim')
