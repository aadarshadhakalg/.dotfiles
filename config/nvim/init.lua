vim.g.mapleader = " "
vim.o.relativenumber = true

require('packer-plugins')

vim.keymap.set('n', '<C-e>',':NvimTreeToggle<CR>',{noremap = true })

-- Flutter Development
vim.keymap.set('n', '<leader>d',':CocCommand flutter.dev.openDevLog<CR>',{noremap = true })
vim.keymap.set('n', '<F5>',':CocCommand flutter.run<CR>',{noremap = true })
vim.keymap.set('n', '<leader>pg',':CocCommand flutter.pub.get<CR>',{noremap = true })
vim.keymap.set('n', '<leader>hr',':CocCommand flutter.dev.hotRestart',{noremap = true })
