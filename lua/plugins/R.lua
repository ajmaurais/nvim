return {
    {
        "R-nvim/R.nvim",
        lazy = false,
        config = function()
        -- Create a table with the options to be passed to setup()
        ---@type RConfigUserOpts
        local opts = {
            hook = {
                on_filetype = function()
                    vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>d", "<Plug>RDSendLine", {})
                    vim.api.nvim_buf_set_keymap(0, "v", "<LocalLeader>se", "<Plug>RSendSelection", {})
                    vim.api.nvim_buf_set_keymap(0, "n", "<LocalLeader>pe", "<Plug>RSendParagraph", {})
                end
            },
            R_args = {"--quiet", "--no-save"},
            setwd = "nvim",
            min_editor_width = 90,
            rconsole_width = 110,
            source_args = "echo = TRUE",
            disable_cmds = {
                "RCustomStart",
                "RSPlot",
                "RSaveClose",
            },
            quarto_chunk_hl = {
                highlight = false,               -- Disable the highlighting
                virtual_title = true,           -- Don't add the virtual text
                -- bg = "#003010",                  -- Use a different background color
                events = "BufEnter,TextChanged", -- Update the highlighting more often
            },
            view_df = {
                save_fun = "function(o, oname) { f <- file.path(tempdir(), paste0(oname, '.tsv')); message(oname, ' -> ', f); write.table(o, f, row.names=FALSE, sep='\t'); system(paste('open', shQuote(f))); f }",
                open_app = "true",
            }
        }
        require("r").setup(opts)
    end,
},
{
    "R-nvim/cmp-r",
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("cmp").setup({ sources = {{ name = "cmp_r" }}})
            require("cmp_r").setup({})
        end,
    },
}
}
