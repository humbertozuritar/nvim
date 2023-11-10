return {
    {
        -- DESC: Extensions for the built-in LSP support in Neovim for eclipse.jdt.ls
        'mfussenegger/nvim-jdtls',
        enabled = false,
        config = function()
            --local config = {
                --cmd = {'/home/humberto/.local/share/nvim/mason/bin/jdtls'},
                --root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
            --}
            --require('jdtls').start_or_attach(config)

            local jdt = require('jdtls')

            jdt.setup()
        end,
        ft = {
            "java"
        }
    }
}
