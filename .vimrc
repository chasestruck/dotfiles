"        _                    
"       (_)                   
" __   ___ _ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|	
"
" Author: Chase Struck
" Source: <https://github.com/chasestruck/dotfiles/blob/master/.vimrc>
"
" Settings
filetype plugin indent on
syntax on
set nu
set title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set hlsearch
set mouse=a
set splitbelow splitright
set ruler
set nowrap
set ignorecase
set history=500
set autoread
set wildmenu
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set nobackup
set nowb
set noswapfile
set encoding=utf8

"  Sets a box at 81chars, allows me to format code lines under 80chars
highlight ColorColumn ctermbg=red 
call matchadd('colorColumn','\%81v', 100)

" Customization
colorscheme molokai
set background=dark

" Commands/Functions
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
##EOF##
