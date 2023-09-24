"==============================================="
"                                               "
"    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗    "
"    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝    "
"    ██║   ██║██║██╔████╔██║██████╔╝██║         "
"    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║         "
"     ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗    "
"      ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝    "
"                                               "
"==============================================="

"reference: https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor"

set guicursor=a:block

set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set number relativenumber

set tabstop=4

set expandtab

set nobackup

set scrolloff=10

set nowrap

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"PLUGINS ----------------------------------------------------------------"

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
call plug#end()


set background=dark
colorscheme gruvbox

set guifont=Monospace\ Regular\ 12
