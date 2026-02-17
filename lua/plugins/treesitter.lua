return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        config = function ()
            local plugin_dir = vim.fn.stdpath("data") .. "/lazy/nvim-treesitter"
            vim.opt.rtp:prepend(plugin_dir .. "/runtime")
            require("nvim-treesitter").setup()
            vim.api.nvim_create_autocmd("FileType", {
                callback = function(ev)
                    pcall(vim.treesitter.start, ev.buf, ev.match)
                end,
            })
        end
    },
}
