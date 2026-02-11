return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            require("nvim-treesitter").setup()
            local langs = { "lua", "markdown", "markdown_inline", "r", "rnoweb", "yaml", "csv" }
            local installed = require("nvim-treesitter").get_installed()
            for _, lang in ipairs(langs) do
                if not vim.list_contains(installed, lang) then
                    require("nvim-treesitter").install({ lang })
                end
            end
        end
    },
}
