call plug#begin('~/vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'rhysd/vim-clang-format'
Plug 'justmao945/vim-clang'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'micha/vim-colors-solarized'
call plug#end()


" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

syntax on
set showmatch
" the width of a hard tabstop measured in spaces
set tabstop=4
" will make the tab key (in insert mode) insert a combination of spaces (and possibly
" tabs) to simulate tab stops at this width.
set softtabstop=0
" will make the tab key (in insert mode) insert spaces instead of tab characters.
set expandtab
" how much spaces to insert when using >, <, ...
set shiftwidth=4
" will make the tab key (in insert mode) insert spaces or tabs to go to the next
" indent
set smarttab
set directory^=$HOME/.vim/swap//

" NERDTree
" \n to open nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" vim-clang
" let g:clang_compilation_database = './build'

" vim-clang-format
let g:clang_format#command = 'clang-format'
let g:clang_format#code_style = "LLVM"
let g:clang_format#style_options = {
    \ "AlignAfterOpenBracket" : "Align",
    \ "AlignTrailingComments" : "true",
    \ "AllowAllParametersOfDeclarationOnNextLine" : "false",
    \ "AllowShortFunctionsOnASingleLine" : "Empty",
    \ "AllowShortIfStatementsOnASingleLine" : "false",
    \ "AlwaysBreakBeforeMultilineStrings" : "false",
    \ "BinPackArguments" : "false",
    \ "BinPackParameters" : "false",
    \ "BreakBeforeBraces" : "Linux",
    \ "ColumnLimit" : 80,
    \ "IndentCaseLabels" : "true",
    \ "IndentWidth": 4,
    \ "Language" : "Cpp",
    \ "PointerAlignment" : "Right",
    \ "TabWidth" : 4,
    \ "SpaceAfterCStyleCast" : "true",
    \}


" vim-airline
let g:airline#extensions#tabline#enabled = 1

noremap <C-Left> :bp<CR>
noremap <C-Right> :bn<CR>


" vim-airline-themes
let g:airline_theme='bubblegum'
