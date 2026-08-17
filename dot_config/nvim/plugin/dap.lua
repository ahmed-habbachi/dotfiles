return {
    { "mfussenegger/nvim-dap" },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        config = function()
            require("dapui").setup()
            local dap = require("dap")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                require("dapui").open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                require("dapui").close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                require("dapui").close()
            end
        end,
    },
    {
        "leoluz/nvim-dap-go",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dap-go").setup()
        end,
    },
}
