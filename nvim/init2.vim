" Basic configuration
set nocompatible
set encoding=UTF-8
set nobackup
set nowritebackup
syntax on
set mouse=a
set number
set relativenumber
set clipboard=unnamed
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
" Disable default file search
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
" Keyblindings file explorer
:nmap <C-n> :CocCommand explorer<CR>
:nmap <C-p> :FZF<CR>
:nnoremap <C-h> <C-W>h
:nnoremap <C-l> <C-W>l
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>
" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'one-dark/onedark.nvim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'chun-yang/auto-pairs'
"Plug 'sheerun/vim-polyglot'
call plug#end()
" Theme selection
colorscheme onedark
" airline config
let g:airline#extensions#tabline#enabled = 1
" Ctrl + p config
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.2 } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" :CocInstall coc-explorer coc-emmet coc-html coc-css coc-tsserver
" Mover lineas
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
" Buscar, quitar el resaltado
:map <C-f> :noh<CR>
