" Configuraciones basicas
set nocompatible
:syntax on
set encoding=UTF-8
set nobackup
set nowritebackup
set number
set relativenumber
set mouse=a
set clipboard=unnamed
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
" Limite de fila
set textwidth=80
" Atajo explorador 
:map <C-n> :Lexplore<CR>
:nnoremap <C-h> <C-W>h
:nnoremap <C-l> <C-W>l
" Cambiar pestaña en celular
:nnoremap <A-j> :bp<CR>
:nnoremap <A-h> :bn<CR>
" para ir a el archivo en cual estoy situado encima del cursor gf y a la definicion gd
":map <C-PageUp> :bp<CR>
":map <C-PageDown> :bn<CR>
" Buscar, quitar el resaltado
:map <C-f> :noh<CR>
" Reemplazar
" Ejemplo :1,10s/find/replace/g
" Mover lineas
:nnoremap <A-Down> :m .+1<CR>==
:nnoremap <A-Up> :m .-2<CR>==
:inoremap <A-Down> <Esc>:m .+1<CR>==gi
:inoremap <A-Up> <Esc>:m .-2<CR>==gi
:vnoremap <A-Down> :m '>+1<CR>gv=gv
:vnoremap <A-Up> :m '<-2<CR>gv=gv
" Atajo Ctrl + p
set wildmenu
set path+=**
:map <C-p> :find *
" Mostrar bien los colores
if has('termguicolors')
    set termguicolors
endif
" Plugins
call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'chun-yang/auto-pairs'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'sheerun/vim-polyglot'
call plug#end()
" airline config
let g:airline#extensions#tabline#enabled = 1
" Seleccionar tema
colorscheme dracula
