return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local actions = require("fzf-lua.actions")
    require("fzf-lua").setup({
      grep = {
        actions = {
          ["ctrl-g"] = { actions.grep_lgrep },
          ["ctrl-r"] = { actions.toggle_ignore },
        },
      },
    })

    vim.keymap.set("n", "<leader>fg", function()
      require("fzf-lua").live_grep_glob({ resume = true })
    end, { desc = "[F]ind [G]rep" })

    vim.keymap.set("n", "<leader>ff", function()
      require("fzf-lua").files({ resume = true })
    end, { desc = "[F]ind [F]iles" })

    vim.keymap.set("n", "<leader>fb", require("fzf-lua").buffers, { desc = "[F]ind [B]uffers" })

    vim.keymap.set("n", "gr", require("fzf-lua").lsp_references, { desc = "[G]oto [R]eferences" })

    vim.keymap.set("n", "<leader>ca", require("fzf-lua").lsp_code_actions, { desc = "[C]ode [A]ctions" })
  end,
}
