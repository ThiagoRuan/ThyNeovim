return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {

        },
        keys = {
            { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
            { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit logs" },
            { "<leader>e", function() require("snacks").explorer() end, desc = "Open snacks explorer" },
            { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "Rename current file" },
            { "<leader>dB", function() require("snacks").bufdelete() end, desc = "Delete or close buffer (Confirm)" },
        }
   }
}
