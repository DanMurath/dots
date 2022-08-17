" .vimrc
" contains a few plugins, remaps and settings to make editing easier
" i aim to make my vi as minimal as possible, inspired by the old school
" style of programming

call plug#begin('~/.vim/plugged')
Plug 'rstacruz/vim-closer'  " closes brackets
Plug 'tpope/vim-commentary' " comment code <gc>
Plug 'mattn/emmet-vim'
Plug 'DanMurath/palenight'
Plug 'dense-analysis/ale'   " file linting/error check
call plug#end()

colorscheme palenight

let g:user_emmet_leader_key = ','   " for html/react tag closing

" remaps making exiting insert, saving, quitting fast
imap ii <Esc>
nmap ss :w<CR>
nmap sss :wq<CR>
nmap qq :q!<CR>

"general settings
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch      " highlights searched words when using / in normal mode
set incsearch     " highlights letter by letter while searching wrd
set linebreak
set smarttab
set mouse=a       " adds mouse usage, mainly used for scrolling
set timeoutlen=250
set clipboard=unnamed  " cpy/pst

let &t_SI = "\e[6 q"  " changes cursor to thin line when in insert
let &t_EI = "\e[2 q"

let g:ale_lint_on_text_changed = 'never'  " i only want to lint on command
let g:ale_lint_on_insert_leave = 0        " these disable auto linting
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_hover_cursor = 0

let g:ale_fixers = {
    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    \}
let g:ale_fix_on_save = 1

" jump to errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" maps for lint and code info
nmap <silent> <C-l> :ALELint<CR>
nmap <silent> <C-i> :ALEHover<CR>

autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 tabstop=2
