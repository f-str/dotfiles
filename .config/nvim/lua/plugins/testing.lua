return {
	{
		"klen/nvim-test",
		config = function()
			require("nvim-test").setup({
				run = true, -- run tests (using for debug)
				commands_create = true, -- create commands (TestFile, TestLast, ...)
				filename_modifier = ":.", -- modify filenames before tests run(:h filename-modifiers)
				silent = false, -- less notifications
				term = "terminal", -- a terminal to run ("terminal"|"toggleterm")
				termOpts = {
					direction = "vertical", -- terminal's direction ("horizontal"|"vertical"|"float")
					width = 96, -- terminal's width (for vertical|float)
					height = 24, -- terminal's height (for horizontal|float)
					go_back = false, -- return focus to original window after executing
					stopinsert = "auto", -- exit from insert mode (true|false|"auto")
					keep_one = true, -- keep only one terminal for testing
				},
				runners = { -- setup tests runners
					cs = "nvim-test.runners.dotnet",
					go = "nvim-test.runners.go-test",
					haskell = "nvim-test.runners.hspec",
					javascriptreact = "nvim-test.runners.jest",
					javascript = "nvim-test.runners.jest",
					lua = "nvim-test.runners.busted",
					python = "nvim-test.runners.pytest",
					ruby = "nvim-test.runners.rspec",
					rust = "nvim-test.runners.cargo-test",
					typescript = "nvim-test.runners.jest",
					typescriptreact = "nvim-test.runners.jest",
				},
			})
		end,
	},
	{
		"andythigpen/nvim-coverage",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("coverage").setup({
				commands = true, -- create commands
				highlights = {
					-- customize highlight groups created by the plugin
					covered = { fg = "#C3E88D" }, -- supports style, fg, bg, sp (see :h highlight-gui)
					uncovered = { fg = "#F07178" },
				},
				signs = {
					-- use your own highlight groups or text markers
					covered = { hl = "CoverageCovered", text = "▎" },
					uncovered = { hl = "CoverageUncovered", text = "▎" },
				},
				summary = {
					-- customize the summary pop-up
					min_coverage = 80.0, -- minimum coverage threshold (used for highlighting)
				},
				lang = {
					-- customize language specific settings
				},
			})
		end,
	},
}
