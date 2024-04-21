require("dap").configurations.typescript = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch PWA Node",
      program = "./node_modules/@cucumber/cucumber/bin/cucumber.js",
      runtimeArgs = {
        "--inspect",
        "-r",
        "ts-node/register",
        "-r",
        "tsconfig-paths/register"
      },
      args = {
        "--require",
        "step_definitions/**/*.ts",
        "--require",
        "pages/**/*.ts",
        "--require",
        "utils/**/*.ts",
        "--require",
        "conf/**/*.ts",
        "--tags",
        "@04-patient-detail-report"
      },
      console = "integratedTerminal",
      internalConsoleOptions = "openOnSessionStart",
      cwd = "${workspaceFolder}/e2e_tests",
      env = {
        HEADLESS = "true"
      }
    }
}

require('dapui').setup({
    windows = {
      -- Define custom height for the "repl" window
      repl = {
        height = 30,  -- Set the window height to 30 lines
        width = 100,  -- Set the window width to 100 columns
        position = 'bottom',  -- Position the window at the bottom
      },
      -- Define custom height for the "scopes" window
      scopes = {
        height = 30,  -- Set the window height to 30 lines
        width = 50,  -- Set the window width to 50 columns
        position = 'left',  -- Position the window on the left
      },
      -- Define custom height for the "stacks" window
      stacks = {
        height = 30,  -- Set the window height to 30 lines
        width = 50,  -- Set the window width to 50 columns
        position = 'right',  -- Position the window on the right
      },
      -- Define custom height for the "watches" window
      watches = {
        height = 30,  -- Set the window height to 30 lines
        width = 50,  -- Set the window width to 50 columns
        position = 'right',  -- Position the window on the right
      },
    },
  })