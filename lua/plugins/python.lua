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
            require('hlterm').setup({
                app = {
                    python = "ipython",
                },
                mappings = {
                    start = "<LocalLeader>cf",
                    send = "<LocalLeader>d",
                    send_and_stay = "<LocalLeader>l",
                },
                vsplit = true,
                actions = {
                    python = {
                        { "<LocalLeader>cp", "print(%s)" },
                        { "<LocalLeader>rr", "%clear" },
                    },
                },
            })
        end,
    }
}
