return {
    {
        "davidhalter/jedi-vim",
        init = function()
            vim.g["jedi#popup_select_first"] = 0
            vim.g["jedi#show_call_signatures"] = 2
        end
    },
    {
       "neomake/neomake",
       config = function()
           vim.g["neomake_python_enabled_makers"] = {'pylint'}
           vim.cmd("call neomake#configure#automake('nrw', 50)")
       end
    },
    {
        "jalvesaq/vimcmdline",
        config = function()
            vim.g.cmdline_map_start = "<LocalLeader>cf"
            vim.g.cmdline_map_send = "<LocalLeader>d"
            vim.g.cmdline_map_send_and_stay = "<LocalLeader>l"
            vim.g.cmdline_app = {
                python = "/usr/bin/env ipython"
            }
            vim.g.cmdline_in_buffer = 0
            vim.g.cmdline_vsplit = 1
            vim.g.cmdline_actions = {
                python = {
                    {"<LocalLeader>cp", "print(%s)"},
                    {"<LocalLeader>rr", "%clear"}
                }
            }
        end,
    }
}
