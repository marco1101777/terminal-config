" Usa números de línea
set number
"cambiar color de los numeros 
hi LineNr ctermfg=blue
" color de las palabras reservadas a morado ( let set nnoremap etc..)
hi Statement ctermfg=magenta
" ctrl + p para buscar archivos
nnoremap <C-p> :Lexplore<CR>
" color de los comentarios a verde
hi Comment ctermfg=green
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
" autocompletado de vairbles oh texto 
set omnifunc=syntaxcomplete#Complete
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
