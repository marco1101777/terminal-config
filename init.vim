" Usa números de línea
set number

" Usa espacios en lugar de tabulaciones
set expandtab
set tabstop=4
set shiftwidth=4

" leader 
let mapleader = ","

" Habilita el resaltado de sintaxis
syntax enable

" Activa el resaltado de búsqueda mientras escribes
set incsearch

" Habilita la búsqueda insensible a mayúsculas y minúsculas
set ignorecase
set smartcase

" Muestra la coincidencia parcial mientras buscas

set incsearch
nnoremap <A-UP> :m-2<CR>
nnoremap <A-DOWN> :m+1<CR>

" Habilita la línea de comando mejorada
set wildmenu
" Mover línea hacia arriba con Alt + Flecha Arriba

" Habilita la línea de estado (mostrar modo, número de línea, etc.)
set ruler

" Activa la identación automática
set autoindent
set smartindent

" Activa el resaltado de coincidencia de paréntesis
set showmatch

" Desactiva la copia en el portapapeles por defecto (use "+ para el portapapeles del sistema)
set clipboard=unnamedplus

" Muestra las líneas relativas
set relativenumber
" Custom shorcuts  
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-l> :vsplit

" Establece el esquema de colores
" Instala y carga vim-plug si no está instalado
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Pluggins 
call plug#begin('~/.config/nvim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug '907th/vim-auto-save'
call plug#end()
" autosave 
"
let g:auto_save=1 

" paleta de colores 
set  background=dark 
colorscheme palenight 

" nerdTree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-p> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:python3_host_prog = '/bin/python3.10'

" Snipets config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" lualine
lua << END
    require("lualine").setup {

        options = {
            theme = "auto",
        },

    sections = {
        lualine_a = { "mode" },
        lualine_b = { "filename" },
        lualine_c = { "g:coc_status" },
        lualine_x = { "branch" },
        lualine_y = { "encoding" },
        lualine_z = { "location" }
        }
    }
END



