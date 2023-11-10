return {
    {
        -- DESC: A calendar application for Vim
        "itchyny/calendar.vim",
        init = function()
            function ToggleCalendar()
                vim.cmd("Calendar -view=year -split=vertical -position=left -width=27")
                if vim.g.calendar_open then
                    if vim.g.calendar_open == 1 then
                        vim.cmd("q")
                        vim.g.calendar_open = nil
                    else
                        vim.g.calendar_open = 1
                    end
                else
                    vim.g.calendar_open = 1
                end
            end
        end,
        config = function()
            vim.g.calendar_frame = 'default'
        end,
        cmd = {
            "Calendar",
        },
        keys = {
            {"<Space>ca", mode = "n", "<cmd>lua ToggleCalendar()<cr>"},
        },
    },
}
