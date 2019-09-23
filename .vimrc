execute pathogen#infect()

syntax on

set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set showmatch
set nobackup noswapfile

let mapleader=","

highlight Visual cterm=reverse ctermbg=NONE

filetype plugin indent on

" NERDTree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" fzf
set rtp+=/usr/local/opt/fzf

" rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
