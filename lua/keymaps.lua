vim.g.mapleader = " "

-- General keymaps
vim.keymap.set('n', '<leader>hl', vim.cmd.Ex)
-- Move Lines
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
-- Paste without losing yanked text
vim.keymap.set('x', '<leader>p', '\"_dP')
-- Delete without losing yanked text
vim.keymap.set({'n','v'},'<leader>d', '\"_d')
-- Window movement
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Harpoon keymaps
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
vim.keymap.set('n','<leader>a', mark.add_file)
vim.keymap.set('n','<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n','<leader>hj', function() ui.nav_next()end)
vim.keymap.set('n','<leader>hk', function() ui.nav_prev()end)

-- Undotree
local undo = require('undotree')
vim.keymap.set('n','<leader>u', function() undo.toggle() end)

-- Floating cmd line
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

