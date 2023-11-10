return {
    "rshkarin/mason-nvim-lint",
    dependencies = {
        "williamboman/mason.nvim",
        'mfussenegger/nvim-lint',
    },
    config = function()
        require("mason").setup()
        --require("lint").setup()
        require("mason-nvim-lint").setup({
            ensure_installed = {},
            automatic_installation = false,
        })
    end
}
