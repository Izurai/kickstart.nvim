-- shorten function
local keymap = vim.keymap.set
-- silent keympa option
local opts = { silent = true }

-- clear highlights
keymap('n', '<leader>h', '<cmd>nohlsearch<CR>', opts)

-- better pasta
keymap('v', 'p', '"_dP', opts)

-- jj fast to escape
keymap('i', 'jj', '<ESC>', opts)

-- Telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>ft', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', ':Telescope buffers<CR>', opts)

-- exit buffer
keymap('n', '<leader>e', ':Ex<CR>', opts)

-- move stuff around in v mode
keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")
