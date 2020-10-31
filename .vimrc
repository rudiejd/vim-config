set encoding=utf-8

nnoremap <F8> :TagbarToggle <CR>

set nocompatible
call plug#begin()

" Set DLL for my windows machine
let &pythonthreedll = 'C:\Users\rudiejd\AppData\Local\Programs\Python\Python37\python37.dll'

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
    nnoremap <F6> :NERDTreeToggle <CR>
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/AutoComplPop'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/OmniCppComplete'
Plug 'lervag/vimtex' 
    let g:vimtex_quickfix_mode=0
    let g:tex_flavor='latex'
    let g:vimtex_view_general_viewer = 'sumatrapdf'
Plug '907th/vim-auto-save'
Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsSnippetsDir = 'C:\Users\rudiejd\vimfiles\plugged\ultisnips\'
call plug#end()

set backspace=indent,eol,start
set tabstop=4
set expandtab
set sw=4
set ruler
set number
set showcmd
set incsearch
set hlsearch
syntax on


" matching for html tags
runtime macros/matchit.vim

" autocomplete 
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set omnifunc=htmlcomplete#CompleteTags
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
colorscheme gruvbox
set bg=dark

setlocal spell
set spelllang=en_us
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
