vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ timeout_ms = 6000 })<CR>")

-- window managment keymaps in vim
vim.keymap.set("n", "<leader>sv", "<C-w>v")     --split vertical
vim.keymap.set("n", "<leader>sh", "<C-w>s")     --split horizontal
vim.keymap.set("n", "<leader>se", "<C-w>=")     --make split equal
vim.keymap.set("n", "<leader>sc", "<C-w>i")     --make split equal
vim.keymap.set("n", "<leader>sx", ":close<CR>") --close split

-- for navegation between windows use <C-w> h-j-k-l

-- nvim-tree keymaps
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")   --Toggle file tree
vim.keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>") --Collapses the file tree

-- lsp-saga keymaps
vim.keymap.set("n", "<leader><CR>", ":Lspsaga term_toggle<CR>")               -- open terminal
vim.keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>")                      -- show definition, references
vim.keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")           -- got to declaration
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")                 -- see definition and make edits in window
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")        -- go to implementation
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")             -- see available code actions
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>")                  -- smart rename
vim.keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>")    -- show  diagnostics for line
vim.keymap.set("n", "<leader>wd", "<cmd>Lspsaga show_cursor_diagnostics<CR>") -- show diagnostics for cursor
vim.keymap.set("n", "<leader>D", "<cmd>Lspsaga show_buf_diagnostics<CR>")     -- show diagnostics for cursor
vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")            -- jump to previous diagnostic in buffer
vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")            -- jump to next diagnostic in buffer
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>")                        -- show documentation for what is under cursor
vim.keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>")                  -- see outline on right hand side

-- eslint_d fix files
vim.keymap.set("n", "<leader>ef", "mF:%!eslint_d --stdin --fix-to-stdout<CR>`F") -- see outline on right hand side

-- debugger keymaps
vim.keymap.set("n", "<leader><C-d>t", require("dapui").toggle)
vim.keymap.set("n", "<leader><C-d>b", require("dap").toggle_breakpoint)

-- trouble keymaps
vim.keymap.set("n", "<leader>tD", "<cmd>TroubleToggle<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>")
