return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Formatters
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.alejandra,
                null_ls.builtins.formatting.asmfmt,
                null_ls.builtins.formatting.clang_format,


                -- Diagnostics
            },
        })
    end,
}
