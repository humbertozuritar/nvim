return {
   -- DESC: Highlight, list and search todo comments in your projects
   "folke/todo-comments.nvim",
   event = "VeryLazy",
   dependencies = {
       -- DESC: All the lua functions I don't want to write twice.
       "nvim-lua/plenary.nvim",
   },
   config = function()
       require("todo-comments").setup({
           signs = true,           -- DESC: show icons in the signs column
           sign_priority = 8,      -- DESC: sign priority
           -- DESC: keywords recognized as todo comments
           keywords = {
               TODO = { icon = " ", color = "#458588" },
               DOING ={ icon = " ", color = "#689D6A"},
               DONE = { icon = " ", color = "#EBDBB2"},
               --
               TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
               FIX  = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }},
               PERF = { icon = " ", color = "#B16286", alt = {"PERFORMANCE", "OPTIMIZE" } },
               --
               HACK = { icon = " ", color = "#D79921" },
               WARN = { icon = " ", color = "#FE8019", alt = { "WARNING", "XXX" } },
               --
               NOTE = { icon = " ", color = "#689D6A", alt = { "INFO" } },
               DESC = { icon = " ", color = "#A89984", alt = { "DESCRIPTION" } },
           },
       })
   end,
   cmd = { 'TodoTelescope' },
   --keys = { { "<Space>de", mode = "n", "<cmd>TodoTelescope<cr>" } },
}
