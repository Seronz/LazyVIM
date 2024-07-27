return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "go",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        source = {
          null_ls.builtins.formatting.gofmt,
          null_ls.builtins.formatting.goimports,
        },
      })
    end,
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      -- Setup nvim-dap and dap-ui
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      require("dap-go").setup()
      vim.api.nvim_set_keymap(
        "n",
        "<leader>db",
        "<cmd>DapToggleBreakpoint <CR>",
        { noremap = true, silent = true, desc = "Add breakpoint at line" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>dus",
        "<cmd> lua require('dap.ui.widgets').sidebar(require('dap.ui.widgets').scopes).open() <CR>",
        { noremap = true, silent = true, desc = "Open Debbuger Sidebar" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>dr",
        "<cmd>DapContinue <CR>",
        { noremap = true, silent = true, desc = "start or continue debugging" }
      )
      vim.api.nvim_set_keymap("n", "<leader>ds", "<cmd> DapStepOver <CR>", {
        noremap = true,
        silent = true,
        desc = "Step Over",
      })
      vim.api.nvim_set_keymap(
        "n",
        "<leader>dsi",
        "<cmd>DapStepInto <CR>",
        { noremap = true, silent = true, desc = "Dap Step into" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>dso",
        "<cmd>DaoStepOver <CR>",
        { noremap = true, silent = true, desc = "Dap Step Over" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>ddc",
        "<cmd>DapDisconnect <CR>",
        { noremap = true, silent = true, desc = "Dap Disconnect" }
      )
      vim.api.nvim_set_keymap(
        "n",
        "<leader>dc",
        "<cmd> lua require('dapui').close() <CR>",
        { noremap = true, silent = true, desc = "Close Debugger Sidebar" }
      )
    end,
  },
}
