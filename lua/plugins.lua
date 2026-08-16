vim.pack.add({"https://github.com/scottmckendry/cyberdream.nvim"})
vim.pack.add({"https://github.com/ellisonleao/gruvbox.nvim"})
vim.pack.add({"https://github.com/catppuccin/nvim"})
vim.pack.add({"https://github.com/eldritch-theme/eldritch.nvim"})
vim.pack.add({"https://github.com/miikanissi/modus-themes.nvim"})

vim.pack.add({"https://github.com/mason-org/mason.nvim"})
require('mason').setup()

vim.pack.add({"https://github.com/nvim-lualine/lualine.nvim"})
require('lualine').setup {
	options = { 
		theme  = "modus_operandi",
	},
}

vim.pack.add({
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-telescope/telescope.nvim' },
})

vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})
require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp" } }
})

vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})

vim.pack.add({"https://github.com/mason-org/mason-lspconfig.nvim"})
require('mason-lspconfig').setup()

vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  },
  -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})
require("neo-tree").setup({
  filesystem = {
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node",
        ["<space>"] = "none", -- Optional: disable space for selecting
      },
    },
  },
})

vim.pack.add({"https://github.com/windwp/nvim-autopairs"})
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

vim.pack.add({"https://github.com/akinsho/toggleterm.nvim"})
require("toggleterm").setup({shell = "pwsh.exe",})

