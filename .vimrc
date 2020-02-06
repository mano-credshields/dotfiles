set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set number
set laststatus=2
set noswapfile

filetype plugin indent on
filetype indent on
set smartindent

map <silent> <C-b> :NERDTreeFocus<CR>
map <silent> <C-n> :NERDTreeToggle<CR>
noremap <Leader>\t :botright vertical terminal

" set the runtime path to include Vundle and initialize
let g:NERDTreeDirArrows=0
set rtp+=~/.vim/bundle/Vundle.vim

set t_Co=256
set background=dark
call vundle#begin()
colorscheme molokai_dark
"Can enable powerline fonts.

let g:molokai_original = 1
let g:rehash256 = 1
let g:airline_theme='minimalist'

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set splitbelow
set splitright
set relativenumber

let g:user_emmet_leader_key=','

set ttimeout
set ttimeoutlen=50
set timeoutlen=3000


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Chiel92/vim-autoformat'

Plugin 'flazz/vim-colorschemes'

Plugin 'mattn/emmet-vim'

Plugin 'prettier/vim-prettier', { 'do': 'npm install' }

" Airline Settings.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve "removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

