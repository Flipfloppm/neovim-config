require("nvim-tree").setup({
    git = {
        ignore = false,
    }
})
vim.keymap.set('n', '<leader>v', ':NvimTreeToggle<CR>', 
    { noremap = true, silent = true, desc = 'Toggle NvimTree' }
)
