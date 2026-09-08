return {
  -- colorscheme: matches the "tokyo-night" theme set in Herdr
  { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight" } },

  -- bash/shell: no dedicated LazyVim extra, wire it up manually
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "shellcheck",
        "shfmt",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "dockerfile",
        "yaml",
      },
    },
  },
}
