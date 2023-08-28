local ls =   ensure_installed = {

-- TODO install codelldb via mason

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "csharp_ls",
        "cmake",
        "cssls",
        "clojure_lsp",
        "dockerls",
        "docker_compose_language_service",
        "eslint",
        "fsautocomplete",
        "golangci_lint_ls",
        "gradle_ls",
        "groovyls",
        "html",
        "hls",
        "jsnls",
        "jdtls",
        "tsserver",
        "kotlin_language_server",
        "texlab",
        "marksman",
        "spectral",
        "opencl_ls",
        "phpactor",
        "powershell_es",
        "jedi_language_server",
        "r_language_server",
        "rust_analyzer",
        "sqlls",
        "taplo",
        "terraformls",
        "vuels",
        "lemminx",
        "yamlls"
    }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    on_attach = on_attach
    capabilities = capabilities
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            },
            workspace = {
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.stdpath "config" .. "/lua"] = true,
                }
            }
        }
    }
}

require("lspconfig").solargraph.setup {
    on_attach = on_attach,
    capabilities = capabilities
}