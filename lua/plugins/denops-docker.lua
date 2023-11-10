return {
    {
        -- DESC: Manage Docker in Vim/Neovim
        "skanehira/denops-docker.vim",
        dependencies = {
            {
                -- DESC: An ecosystem of Vim/Neovim which allows developers to write cross-platform plugins in Deno
                "vim-denops/denops.vim",
                build = "curl -fsSL https://deno.land/x/install/install.sh | sh",
            },
        },
        keys = {
            {"<Space>dc", "<cmd>DockerContainers<cr>"},
        },
    },
}
