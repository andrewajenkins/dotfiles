-- local arrows = require("icons").arrows

-- Set up icons.
-- local icons = {
--   Stopped = { "", "DiagnosticWarn", "DapStoppedLine" },
--   Breakpoint = "",
--   BreakpointCondition = "",
--   BreakpointRejected = { "", "DiagnosticError" },
--   LogPoint = arrows.right,
-- }
-- for name, sign in pairs(icons) do
--   sign = type(sign) == "table" and sign or { sign }
--   vim.fn.sign_define("Dap" .. name, {
--         -- stylua: ignore
--         text = sign[1] --[[@as string]] .. ' ',
--     texthl = sign[2] or "DiagnosticInfo",
--     linehl = sign[3],
--     numhl = sign[3],
--   })
-- end

-- Debugging.
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- Fancy UI for the debugger
      {
        "rcarriga/nvim-dap-ui",
        keys = {
          {
            "<leader>act",
            function()
              -- Calling this twice to open and jump into the window.
              require("dapui").eval()
              require("dapui").eval()
            end,
            desc = "Evaluate expression",
          },
        },
        opts = {
          -- icons = {
          --   collapsed = arrows.right,
          --   current_frame = arrows.right,
          --   expanded = arrows.down,
          -- },
          floating = { border = "rounded" },
          layouts = {
            {
              elements = {
                { id = "stacks", size = 0.30 },
                { id = "breakpoints", size = 0.20 },
                { id = "scopes", size = 0.50 },
              },
              position = "left",
              size = 40,
            },
          },
        },
      },
      -- Virtual text.
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = { virt_text_pos = "eol" },
      },
      -- JS/TS debugging.
      {
        "mxsdev/nvim-dap-vscode-js",
        opts = {
          debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
          adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
        },
      },
      {
        "microsoft/vscode-js-debug",
        build = "npm i && npm run compile vsDebugServerBundle && rm -rf out && mv -f dist out",
      },
      -- Lua adapter.
      {
        "jbyuki/one-small-step-for-vimkind",
        keys = {
          {
            "<leader>acl",
            function()
              require("osv").launch({ port = 8086 })
            end,
            desc = "Launch Lua adapter",
          },
        },
      },
    },
    keys = {
      {
        "<leader>abb",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle breakpoint",
      },
      {
        "<leader>aca",
        "<cmd>FzfLua dap_breakpoints<cr>",
        desc = "List breakpoints",
      },
      {
        "<leader>acc",
        function()
          require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end,
        desc = "Breakpoint condition",
      },
      {
        "<leader>acd",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
      },
      {
        "<leader>aco",
        function()
          require("dap").step_over()
        end,
        desc = "Step over",
      },
      {
        "<leader>aci",
        function()
          require("dap").step_into()
        end,
        desc = "Step into",
      },
      {
        "<leader>acs",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- Automatically open the UI when a new debug session is created.
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
      end

      -- Use overseer for running preLaunchTask and postDebugTask.
      -- require("overseer").patch_dap(true)
      -- require("dap.ext.vscode").json_decode = require("overseer.json").decode

      -- Lua configurations.
      dap.adapters.nlua = function(callback, _)
        callback({ type = "server", host = "127.0.0.1", port = 8086 })
      end
      dap.configurations["lua"] = {
        {
          type = "nlua",
          request = "attach",
          name = "Attach to running Neovim instance",
        },
      }

      -- C configurations.
      dap.adapters.codelldb = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "codelldb",
          args = { "--port", "${port}" },
        },
      }

      -- Add configurations from launch.json
      require("dap.ext.vscode").load_launchjs(nil, {
        ["codelldb"] = { "c" },
        ["pwa-node"] = { "typescript", "javascript" },
      })
    end,
  },
}
