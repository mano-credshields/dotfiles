if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

" COC-Tab Config
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

nmap f <Plug>Lightspeed_s
nmap F <Plug>Lightspeed_S

" Disable 'K' for go-doc
let g:go_doc_keywordprg_enabled = 0

"RipGrep
nnoremap K :Rg! <C-R><C-W><CR>

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

let mapleader=" "

"git-fugitive
map ;gs :G status<CR> 
map ;gd :G diff<CR>
map ;ga :G add 
map ;gc :G commit<CR>
map ;gr :G restore 
map ;gl :G log<CR>
map ;gb :G blame<CR>
" Open a split of previous commit version of the current buffer
map ;go :Gsplit HEAD~1:%<CR>
map ;G :G<CR>

" fzf.vim
" let g:fzf_layout = { 'down': '~40%' }
map ;b :Buffers<CR>
map ;f :Files<CR>
map ;w :Windows<CR>

"colorscheme
colorscheme distinguished
let g:lightline = {'colorscheme': 'simpleblack'}



set guicursor=i:hor25-iCursor
set guicursor+=n:block-Cursor/lCursor

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


call plug#begin('~/.vim/plugged')

let g:user_emmet_leader_key=','

" Plugs
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'master' }
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'ggandor/lightspeed.nvim'

" Plugs come before this line.
call plug#end()
filetype plugin indent on

