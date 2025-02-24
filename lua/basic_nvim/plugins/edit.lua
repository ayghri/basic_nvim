return {
  {
    "aghriss/move.nvim",
    keys = {
      { "<C-n>", ":MoveBlock(1)<CR>", mode = "v", desc = "Move" },
      { "<C-e>", ":MoveBlock(-1)<CR>", mode = "v", desc = "Move" },
      { "<C-m>", ":MoveHBlock(-1)<CR>", mode = "v", desc = "Move" },
      { "<C-i>", ":MoveHBlock(1)<CR>", mode = "v", desc = "Move" },
    },
  },
  {
    "numToStr/Comment.nvim",
    keys = {
      {
        "<leader>/",
        function()
          require("Comment.api").toggle.linewise.current()
        end,
        mode = "n",
        desc = "Toggle comment",
      },

      {
        "<leader>/",
        "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
        mode = "v",
        desc = "Toggle comment",
      },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}
