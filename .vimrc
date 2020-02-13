set nocompatible 		" required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" all other plugins 

" autoindent fix
Plugin 'vim-scripts/indentpython.vim'

" syntax checkinng / highlighting
Plugin 'vim-syntastic/syntastic'

" vim-airline statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" all plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set nu
set encoding=utf-8
colors zenburn

let python_highlight_all=1
syntax on
