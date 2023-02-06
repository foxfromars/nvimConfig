
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")

-- window managment keymaps in vim
vim.keymap.set("n", "<leader>sv", "<C-w>v") --split vertical
vim.keymap.set("n", "<leader>sh", "<C-w>s") --split horizontal
vim.keymap.set("n", "<leader>se", "<C-w>=") --make split equal
vim.keymap.set("n", "<leader>sc", "<C-w>i") --make split equal
vim.keymap.set("n", "<leader>sx", ":close<CR>") --close split

-- for navegation between windows use <C-w> h-j-k-l

-- nvim-tree keymaps
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>") --Toggle file tree
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>") --Focus file tree
vim.keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>") --Collapses the file tree
