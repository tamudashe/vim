syntax on
set encoding=utf-8

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set cursorline
set updatetime=750
set scrolloff=5
set shortmess+=c

set laststatus=2
set statusline+=%F%=%L

nmap Q <Nop>
""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'

call plug#end()

"""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = "\<Space>"

let g:netrw_banner = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide = 1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
nnoremap <silent><leader>e :Lexplore<cr>
set splitbelow

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap zz :update<cr>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Left>  :echoe "Nah fam! Use h"<CR>
nnoremap <Right> :echoe "Nah fam! Use l"<CR>
nnoremap <Up>    :echoe "Nah fam! Use k"<CR>
nnoremap <Down>  :echoe "Nah fam! Use j"<CR>
