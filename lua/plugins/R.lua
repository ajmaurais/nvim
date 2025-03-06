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
            min_editor_width = 90,
            rconsole_width = 110,
            source_args = "echo = TRUE",
            disable_cmds = {
                "RCustomStart",
                "RSPlot",
                "RSaveClose",
            },
         view_df = {
              n_lines = 0,
              -- save_fun = "function(obj, obj_name) {temp_file <- paste0('/tmp/', obj_name, '.csv'); write.table(obj, file=temp_file, row.name=F, sep=',')}",
   open_fun = "ssview <- function(data){ temp_file <- paste0(tempfile(), '.csv'); write.table(data, file=temp_file, row.name=F, sep=','); system(paste0('wslview $(wslpath -w ', temp_file, ')')) }; ssview(%s)"
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
