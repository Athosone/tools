"execute pathogen#infect()
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'jvirtanen/vim-cocoapods'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'tpope/vim-sensible.git'
Plugin 'junegunn/vim-easy-align'
Plugin 'keith/swift.vim'

call vundle#end()

filetype plugin indent on
" 4 spaces wide tabs
:set tabstop=4
" specify indentation as 4 spaces too
:set shiftwidth=4
:set fileformat=unix
:set diffopt+=vertical

autocmd BufWritePre * :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" replace tabs with spaces
:set expandtab
" guess syntax
syntax on
" show line numbers
:set number
" show filename on window title
:set title
" highlight search results
:set hlsearch
" start searching while entering search words
:set incsearch
" trail whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
" Change colors of text and background after 71 chars
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%71v.\+/
" change color of 72 column
set colorcolumn=72
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
" Colors
set background=dark
colorscheme solarized
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

