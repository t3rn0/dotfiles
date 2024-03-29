syntax on

set number
set title
set ignorecase
set expandtab
set incsearch
set hlsearch
set shiftwidth=4
set tabstop=4
set softtabstop=4
set indentexpr=""
set ruler
set backspace=indent,eol,start

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()

filetype plugin on

map <Leader>F :Files<CR>
map <F5> :NERDTreeToggle<CR>
map <Leader>b :Buffers<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <C-u> <C-g>u<C-u>
inoremap <C-w> <C-g>u<C-w>
inoremap <S-Tab> <C-d>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal indentkeys-=0#

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

colorscheme quiet
