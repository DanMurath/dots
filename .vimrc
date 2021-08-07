call plug#begin('~/.vim/plugged') 
Plug 'jiangmiao/auto-pairs'
Plug 'matt/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'DanMurath/palenight'
call plug#end()

colorscheme palenight

let g:user_emmet_leader_key = ','

imap ii <Esc> 
vmap vv <Esc>
nmap ss :w<CR>
nmap sss :wq<CR>
nmap qq :q<CR>

syntax on
set number
set tabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set incsearch
set linebreak
set smarttab
set timeoutlen=250
set clipboard=unnamed
