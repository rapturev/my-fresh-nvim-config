-- Toggle Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { silent = true })

-- Focus/Reveal current file in Neo-tree
vim.keymap.set('n', '<leader>o', ':Neotree focus<CR>', { silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)

-- Exit terminal mode with <Esc><Esc> instead of the default <C-\><C-n>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', {desc = "Exit terminal mode"})

-- Open specific terminal types (Floating, Horizontal, Vertical)
vim.keymap.set('n', '<leader>tf', '<Cmd>ToggleTerm direction=float<CR>', {desc = "Toggle floating terminal"})
vim.keymap.set('n', '<leader>th', '<Cmd>ToggleTerm size=10 direction=horizontal<CR>', {desc = "Toggle horizontal terminal"})
vim.keymap.set('n', '<leader>tv', '<Cmd>ToggleTerm size=80 direction=vertical<CR>', {desc = "Toggle vertical terminal"})
