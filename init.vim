""" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'topope/vim-surround'
Plug 'yegappan/taglist'

Plug 'vim-python/python-syntax'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-clang'

Plug 'davidhalter/jedi-vim'

Plug 'crusoexia/vim-monokai'
Plug 'NLKNguyen/papercolor-theme'
Plug 'whatyouhide/vim-gotham'
Plug 'cormacrelf/vim-colors-github'

call plug#end()

"""
filetype on
set tabstop=4
set shiftwidth=4
set expandtab
set textwidth=72
set autoindent
set smartindent
set fileformat=unix
set cursorline
let g:python_highlight_all=1
syntax enable

"colorscheme gotham
set background=light
colorscheme PaperColor
let g:PaperColor_Theme_Options = {
\  'theme': {
\       'allow_bold': 1,
\       'allow_italic': 1
\   },
\ }

highlight Comment cterm=italic gui=italic

set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

nnoremap <Leader><space> :noh<cr>
" Restore default cursor shape / blinking after exit
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

" Disable vim-markdown folding
let g:vim_markdown_folding_disabled = 1

" Use deoplete
let g:deoplete#enable_at_startup = 1
let g:jedi#completions_enabled = 0
autocmd FileType python setlocal completeopt-=preview
