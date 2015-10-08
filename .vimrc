
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/


syntax enable 
set background=light
set go=
set number
set ruler
set cindent
set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set showmatch
set autoread
set completeopt=menuone,menu,longest


set nocompatible
set laststatus=2
set wildmenu
"use my own color scheme

colorscheme dark
"enable line cross
:set whichwrap=b,s,<,>,[,]

"set - connection words as 1 word.
:set iskeyword+=-
:filetype on 
:filetype plugin on 
:filetype indent on 


:autocmd FileType c,cpp :set foldmethod=indent
:autocmd FileType c,cpp :set number 
:autocmd FileType c,cpp :set foldcolumn=2 
:autocmd FileType c,cpp :map c 0i//<ESC>
:autocmd FileType c,cpp :set cindent 


:autocmd FileType python :set number 
:autocmd FileType python :map c 0i#<ESC>
:autocmd FileType python :set foldcolumn=4
:autocmd FileType python :set foldmethod=syntax 
:autocmd FileType python :set smartindent 


:helptags ~/.vim/doc
"Omni
let OmniCpp_NamespaceSearch     = 1
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_ShowAccess          = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot      = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow    = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope    = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces   = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
 au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

if has("autocmd")
    filetype plugin indent on

    " Set fileformat to UNIX
    autocmd FileType php,javascript,uhtml,us,phtml,html,css,python,vim,vimwiki,jade,coffee set fileformat=unix

    " C++ Support
    "autocmd FileType cpp set tags+=~/.vim/tags/cpp
    set tags+=~/.vim/tags/cpp

    " Arduino Support
    autocmd BufRead,BufNewFile *.ino set filetype=c

    " Python Support
    autocmd FileType python set makeprg="python -u %"
    autocmd FileType python imap <silent> <buffer> . .<C-X><C-O>
    autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4

    " JavaScript Support
    autocmd BufRead,BufNewFile *.js set filetype=javascript
    autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType tpl,uhtml,phtml,html,htm,javascript let g:javascript_enable_domhtmlcss=1

    " Jade Support
    autocmd BufRead,BufNewFile *.jade set filetype=jade syntax=jade

    " CoffeeScript Support
    autocmd BufRead,BufNewFile *.coffee set filetype=coffee syntax=coffee

    " PHP Support
    autocmd BufNewFile,BufRead *.php set filetype=php
    autocmd FileType php set omnifunc =phpcomplete#CompletePHP
    autocmd FileType php set tabstop=4 shiftwidth=4 softtabstop=4

    let php_sql_query=1
    let php_htmlInStrings=1

    " CSS3 Syntax Highlight
    autocmd BufRead,BufNewFile *.css set filetype=css syntax=css3

    " HTML Syntax Highlight
    autocmd BufNewFile,BufRead *.htm set filetype=html
    autocmd BufNewFile,BufRead *.html set filetype=html
    autocmd BufNewFile,BufRead *.uhtml set filetype=html
    autocmd BufNewFile,BufRead *.us set filetype=html
    autocmd BufNewFile,BufRead *.phtml set filetype=html
    autocmd BufNewFile,BufRead *.tpl set filetype=html

    " Web Development Indentation
    autocmd FileType tpl,uhtml,phtml,html,htm,javascript,coffee,css set tabstop=2 shiftwidth=2 softtabstop=2

endif



"ctags /usr/local/bin/ctags
 let Tlist_Ctags_Cmd               = '/usr/local/bin/ctags'
 let Tlist_php_settings            = 'php;c:class;f:function;d:constant'
 let Tlist_File_Fold_Auto_Close    = 1
 let Tlist_GainFocus_On_ToggleOpen = 1
 let Tlist_WinWidth                = 30
 let Tlist_Show_One_File           = 1
 let Tlist_Exit_OnlyWindow         = 1
 let Tlist_Use_Right_Window        = 0

