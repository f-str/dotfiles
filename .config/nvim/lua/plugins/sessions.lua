return {
    "rmagatti/auto-session",
    config = function()
        local function close_neo_tree()
            require("neo-tree.sources.manager").close_all()
            vim.notify("closed all")
        end

        require("auto-session").setup({
            log_level = "error",
            auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
            auto_session_create_enabled = true,
            auto_save_enabled = true,
            auto_restore_enabled = true,
            auto_session_use_git_branch = true,
            bypass_session_save_file_types = { "neo-tree" },
            pre_save_cmds = {
                close_neo_tree,
            },
            session_lens = {
                buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
                load_on_setup = true,
                theme_conf = { border = true },
                previewer = false,
            },
        })
        vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, {
            noremap = true,
        })
    end,
}
