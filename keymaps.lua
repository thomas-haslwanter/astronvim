-------------------------------------------------------------
-- Keymaps configuration file: keymaps of neovim
-- and plugins.
-----------------------------------------------------------

local g = vim.g         				-- global variables
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }


-----------------------------------------------------------
-- Neovim shortcuts:
-----------------------------------------------------------


-- Copy to clipboard
map('v','<leader>y', '"+y', default_opts)

map('n', '<leader>Y', '"+yg_', { noremap = true })
map('n', '<leader>y', '"+y', { noremap = true })
map('n', '<leader>yy', '"+yy', { noremap = true })


-- useful shortcuts: eliminate wrapped lines, and 'save'
map('',  '<F12>', 'Go<esc>:g/^./ .,/^$/-1 join<CR>', { noremap = true })
map('',  '<C-s>', '<Esc>:w<CR>', { noremap = true })
map('i', '<C-s>', '<Esc>:w<CR>', { noremap = true })
map('n', '<leader>e', '<Esc>:e.<CR>', { noremap = true })

-- Paste from clipboard
map('n', '<leader>p', '"+p', { noremap = true })
map('n', '<leader>P', '"+P', { noremap = true })
map('v', '<leader>p', '"+p', { noremap = true })
map('v', '<leader>P', '"+P', { noremap = true })

map('n', '<F7>', ':call toggle_spell()<CR>', {noremap = true })

-- other useful remaps
-- underline, center-find, edit init.vim, toc for TEX-files, NerdTree
-- let @h = "yypVr"
-- nnoremap n nzz
map('n', '<leader>q', 'gqap', { noremap = true })
map('n', '<Leader>v', ':e $MYVIMRC<cr>', { noremap = true })
map('n', '<leader>t', ':VimtexTocOpen <CR>', { noremap = true })
map('n', '<leader>tc', ':VimtexTocToggle <CR>', { noremap = true })
map('n', '<leader>xc', ':VimtexCompile <CR>', { noremap = true })
map('n', '<leader>xv', ':VimtexView <CR>', { noremap = true })
map('n', '<leader>xx', ':VimtexClean <CR>', { noremap = true })

-- Remaps for Sessions
map('n', '<leader>xs',
    ':Obsession ' .. g.session_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>',
    { noremap = true })
map('n', '<leader>xr',
    ':so ' .. g.session_dir .. '/*.vim<C-D><BS><BS><BS><BS><BS>',
    { noremap = true })

-- map('n', '<F7>', "require('options').toggle_spell()", { noremap = true })
