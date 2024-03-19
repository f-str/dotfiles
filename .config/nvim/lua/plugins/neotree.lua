return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim"
    },
    config = function()
        require('neo-tree').setup({
            close_if_last_window = true,
            enable_normal_mode_for_inputs = true,
            filesystem = {
                filtered_items = {
                    visible = false,
                    hide_dotfiles = false,
                    hide_gitignore = false,
                    hide_hidden = false,
                    hide_by_pattern = {
                        "node_modules",
                        ".git",
                        ".DS_Store",
                        ".idea",
                        ".vscode",
                        "__pycache__",
                        ".pytest_cache",
                        ".mypy_cache",
                        ".cache",
                        ".venv",
                        ".tox",
                    }
                }
            }
        })
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
    end
}


