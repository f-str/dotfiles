requie("dapui").setup()

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

vim.keymap.set("n", "<Leader>dx", ":DTerminate<CR>")
vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<Leader>ds", ":DapStop<CR>")
vim.keymap.set("n", "<Leader>dr", ":DapRestart<CR>")
vim.keymap.set("n", "<Leader>di", ":DapStepInto<CR>")
vim.keymap.set("n", "<Leader>do", ":DapStepOut<CR>")
vim.keymap.set("n", "<Leader>dn", ":DapStepOver<CR>")
vim.keymap.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<Leader>dB", ":DapSetBreakpoint<CR>")
vim.keymap.set("n", "<Leader>dl", ":DapLogBreakpoint<CR>")
vim.keymap.set("n", "<Leader>dp", ":DapPause<CR>")
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")