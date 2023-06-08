call plug#begin('~/vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'bronson/vim-trailing-whitespace'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer' }
Plug 'https://github.com/mark2185/vim-alternator.git'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamedplus

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add number to current line and relative numbers to all
set number relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
" Set tab width to 4 columns.
" Use space characters instead of tabs.
set expandtab ts=2 sw=2 ai

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Use highlighting when doing a search.
set hlsearch

" Show matching words during a search.
set showmatch

" Show the mode you are on the last line.
set showmode

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set showmatch

set directory^=$HOME/.vim/swap//

" don't ask me do I want to save buffer before switch
set hidden

" MAPPINGS
"{{{
" Use jj as escape
inoremap jj <esc>

" Tab navigation, hold `H` to go to the tab left and `L` to go to the tab left
nnoremap H gT
nnoremap L gt

" NERDTree
" \n to open nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" YCM
nmap <leader><Tab> <Plug>(YCMFindSymbolInWorkspace)
" }}}

" CONFIGURATIONS
"{{{

let g:ycm_always_populate_location_list = 1
let g:ycm_clangd_args = [
            \'-background-index',
            \'-completion-style=bundled',
            \'-header-insertion=never',
            \'-log=verbose',
            \'-pretty',
            \'-j=8' ]
"let g:ycm_clangd_binary_path='clangd-13'
let g:alternator_header_extensions = [ '_impl.h', '.h' ]

" }}}
