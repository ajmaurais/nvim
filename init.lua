require("config.lazy")

vim.cmd([[
    colorscheme monokai-pro
    set mouse=
    set expandtab           " enter spaces when tab is pressed
    set tabstop=4           " use 4 spaces to represent tab
    set softtabstop=4
    set shiftwidth=4        " number of spaces to use for auto indent
    set autoindent          " copy indent from current line when starting a new line
    set smartindent
    set smarttab
    

    set ruler                           " show line and column number
    set showcmd             " show (partial) command in status line

    " set relative line numbers on
    set rnu
    set number

    " jump to end of line in insert mode
    imap <C-e> <esc>$i<right>

    " turn off highliting with enter
    nnoremap <CR> :noh<CR>

    set autoread "auto load file changes
]])
