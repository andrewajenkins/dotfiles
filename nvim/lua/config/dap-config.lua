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
      "tsconfig-paths/register",
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
      "@04-patient-detail-report",
    },
    console = "integratedTerminal",
    internalConsoleOptions = "openOnSessionStart",
    cwd = "${workspaceFolder}/e2e_tests",
    env = {
      HEADLESS = "true",
    },
  },
}

