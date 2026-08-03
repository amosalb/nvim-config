return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "bashls",
                "pyright",
                "ruff",
                "stylua",
            },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
