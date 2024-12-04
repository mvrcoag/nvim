local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

require("lazy").setup({
	"yorickpeterse/nvim-grey",
	"christoomey/vim-tmux-navigator", -- ctrl + navigation to move between split views
	"nvim-lua/plenary.nvim", -- lua functions for other plugins
	"kyazdani42/nvim-web-devicons", -- file icons
	"nvim-lualine/lualine.nvim", -- status line
	-- telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", tag = "0.1.8" },
	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	-- mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- lspconfig
	"hrsh7th/cmp-nvim-lsp",
	"neovim/nvim-lspconfig",
	-- lsp saga
	"nvimdev/lspsaga.nvim",
	-- null-ls
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	-- treesitter
	"nvim-treesitter/nvim-treesitter",
	-- auto closing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	-- git signs
	"lewis6991/gitsigns.nvim",

	-- github copilot
	"github/copilot.vim",
})
