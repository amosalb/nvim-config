return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require('nvim-treesitter').install { 
                'python', 
                'javascript', 
                'lua',
                'vimdoc',
                'java'
            }
            require("nvim-treesitter")
            .setup({
                highlight = {
                    enable = true
                }
            })
        end,
    }
}
