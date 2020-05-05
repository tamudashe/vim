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
set updatetime=500
set scrolloff=5
set shortmess+=c
set autoread
" set laststatus=2
" set statusline+=%F%=%L

let mapleader = "\<Space>"
nmap Q <Nop>

"""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'

call plug#end()

"""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

nnoremap <leader>f :NERDTreeToggle<Cr>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

if executable('rg')
    let g:rg_derive_root='true'
endif


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
nnoremap B ^
nnoremap E $
nnoremap <leader>s :mksession<CR>

nnoremap <Left>  :echoe " Nah fam! Use h "<CR>
nnoremap <Right> :echoe " Nah fam! Use l "<CR>
nnoremap <Up>    :echoe " Nah fam! Use k "<CR>
nnoremap <Down>  :echoe " Nah fam! Use j "<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
