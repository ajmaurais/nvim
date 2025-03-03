return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "markdown", "markdown_inline", "latex", "r", "rnoweb", "yaml", "csv" },
                highlight = { enable = true },
                sync_install = false,      -- important
                auto_install = false,      -- important
            })
        end
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    { "nvim-treesitter/nvim-treesitter-context" },
    -- { "nvim-treesitter/nvim-markdown" },
}
