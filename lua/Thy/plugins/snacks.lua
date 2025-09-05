return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            explorer = {
                enabled = true,
                layout = {
                    cycle = false,
                }
            },
            quickfile = {
                enabled = true,
                exclude = {"latex"},
            },
            picker = {
                enabled = true,
                matchers = {
                    frecency = true,
                    cwd_bonus = true,
                },
                formatters = {
                    file = {
                        filename_first = true,
                        filename_only = false,
                        icon_width = 2,
                    },
                },
                layout = {
                    preset = "telescope",
                    cycle = false,
                },
                layouts = {
                    select = {
                        preview = false,
                        layout = {
                            backdrop = false,
                            width = 0.6,
                            min_width = 80,
                            height = 0.4,
                            min_height = 10,
                            box = "vertical",
                            border = "rounded",
                            title = "{title}",
                            title_pos = "center",
                            { win = "input", height = 1, border = "bottom" },
                            { win = "list", border = "none" },
                            { win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
                        },
                    },
                    telescope = {
                        reverse = true,
                        layout = {
                            box = "horizontal",
                            backdrop = false,
                            width = 0.8,
                            height = 0.9,
                            border = "none",
                            {
                                box = "vertical",
                                { win = "list", title = " Results ", title_pos = "center", border = "rounded" },
                                { win = "input", height = 1, border = "rounded", tilte = "{title} {live} {flags}", title_pos = "center" },
                            },
                            {
                                win = "preview",
                                title = "{preview:Preview}",
                                width = 0.5,
                                border = "rounded",
                                title_pos = "center",
                            },
                        },
                    },
                    ivy = {
                        layout = {
                            box = "vertical",
                            backdrop = "false",
                            width = 0,
                            height = 0.4,
                            position = "bottom",
                            border = "top",
                            title = "{title} {live} {flags}",
                            title_pos = "left",
                            { win = "input", height = 1, border = "bottom" },
                            {
                                box = "horizontal",
                                { win = "list", border = "none" },
                                { win = "preview", title = "{preview}", width = 0.5, border = "left" },
                            },
                        },
                    },
                }
            },
            dashboard = {
                enabled = true,
                sections = {
                    { section = "header" },
                    { section = "keys", gap = 1, padding = 1 },
                    { section = "startup" },
                    -- {
                    --     section = "terminal",
                    --     cmd = "cat /home/ruan/Imagens/ASCII/Vol1-ASCII.txt",
                    --     random = 10,
                    --     pane = 2,
                    --     indent = 4,
                    --     height = 30,
                    -- },
                }
            }

        },
        keys = {
            { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
            { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit logs" },
            { "<leader>es", function() require("snacks").explorer() end, desc = "Open snacks explorer" },
            { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "Rename current file" },
            { "<leader>dB", function() require("snacks").bufdelete() end, desc = "Delete or close buffer (Confirm)" },

            -- Picker
            { "<leader>pf", function() require("snacks").picker.files() end, desc = "Find files (Snacks)" },
            { "<leader>pc", function() require("snacks").picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find config file" },
            { "<leader>ps", function() require("snacks").picker.grep() end, desc = "Grep word" },
            { "<leader>pws", function() require("snacks").picker.grep_word() end, desc = "Search visual selection or word", mode = { "n", "x" } },
            { "<leader>pk", function() require("snacks").picker.keymaps({ layout = "ivy" }) end, desc = "Search keymaps (Snacks)" },

            { "<leader>gbr", function() require("snacks").picker.git_branches({ layout = "select" }) end, desc = "Pick and switch git branches" },
            { "<leader>th", function() require("snacks").picker.colorschemes({ layout = "ivy" }) end, desc = "Pick color schemes" },
            { "<leader>vh", function() require("snacks").picker.help() end, desc = "Help pages" },
        }
   }
}
