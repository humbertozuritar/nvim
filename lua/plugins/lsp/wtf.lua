return {
    "piersolenski/wtf.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {},
    keys = {
        {
            mode = { "n", "x" },
            "gw",
            function()
                require("wtf").ai()
            end,
            desc = "Debug diagnostic with AI",
        },
        {
            mode = { "n" },
            "gW",
            function()
                require("wtf").search()
            end,
            desc = "Search diagnostic with Google",
        },
    },
}
