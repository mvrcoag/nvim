local format = require("mvrcoag.custom.format")

vim.g.mapleader = " "

local keymap = vim.keymap 

-- general keymaps
keymap.set("i", "jk", "<ESC>") -- return to normal mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- in normal mode space+n+h turn off highlight

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go prev tab

-- plugins keymaps
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle nvim tree

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- format current filw with prettier
keymap.set("n", "<leader>fjs", ':lua require("mvrcoag.custom.format").format_with_prettier()<CR>')
keymap.set("n", "<leader>fphp", ':lua require("mvrcoag.custom.format").format_with_php_cs_fixer()<CR>')

