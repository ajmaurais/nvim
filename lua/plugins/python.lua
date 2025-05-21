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
    }
}
