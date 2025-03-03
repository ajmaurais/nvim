require("config.lazy")

vim.cmd([[
    colorscheme monokai-pro
    set background=dark

    " Use the system register for everything
    set clipboard=unnamedplus

    set mouse=
    set expandtab           " enter spaces when tab is pressed
    set tabstop=4           " use 4 spaces to represent tab
    set softtabstop=4
    set shiftwidth=4        " number of spaces to use for auto indent
    set autoindent          " copy indent from current line when starting a new line
    set smartindent
    set smarttab

    " change leader timeout and mapping
    set notimeout nottimeout

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
    set autowriteall "auto write file modifications

    if has('persistent_undo')      "check if your vim version supports it
      set undofile                 "turn on the feature
      set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
    endif
]])
