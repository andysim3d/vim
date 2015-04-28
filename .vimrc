syntax on
set go=
set number
set cindent
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch

:filetype on 
:filetype plugin on 
:filetype indent on 


:autocmd FileType c,cpp : set foldmethod=syntax 
:autocmd FileType c,cpp :set number 
:autocmd FileType c,cpp :set cindent 



:autocmd FileType python :set number 
:autocmd FileType python :set foldmethod=syntax 
:autocmd FileType python :set smartindent 


:helptags ~/.vim/doc

