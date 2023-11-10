return {
    'stevearc/overseer.nvim',
    --opts = {},
    config = function()
        vim.api.nvim_set_keymap('n', '<leader>or', '<cmd>OverseerRun<cr>', {})
        vim.api.nvim_set_keymap('n', '<leader>ot', '<cmd>OverseerToggle<cr>', {})
        local overseer = require('overseer')
        overseer.setup()
        overseer.load_template("cmake.cmake")
        overseer.load_template("cmake.make")
        overseer.load_template("cmake.bash")
        overseer.load_template("ant.clear")
        overseer.load_template("ant.compile")
        overseer.load_template("ant.run_file")
        overseer.load_template("ant.run_project")
    end
}
