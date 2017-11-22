set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"tabline plugin
Plugin 'mkitt/tabline.vim'
" tagbar
Plugin 'majutsushi/tagbar'
" synstastic - syntax errors
Plugin 'vim-syntastic/syntastic'
" vim-airline-themes via .vim-folder
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" nerdtree from github
Plugin 'scrooloose/nerdtree'
Plugin 'gabrielelana/vim-markdown'
Plugin 'groenewege/vim-less'

Plugin 'benmills/vimux'
"Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" colored syntax highlighting
syntax on
" set airline statusline
:set laststatus=2
"turn powerline fonts on
let g:airline_powerline_fonts = 1
" set theme at start
" let g:airline_theme='dark'
let g:airline_theme='dark'

" let g:airline"extensions"tabline"enabled = 1
" let g:airline"extensions"tagbar"enabled = 1
" let g:airline"extensions"syntastic"enabled =1

	
" => Backups ausschalten
set nobackup 
" => Zeile und Spalte anzeigen
set ruler                  


" =>  ~/.exrc nicht benutzen
set noexrc                
" => nicht piepsen, wenn man an Textbegrenzungen anstößt o.ä.
set noerrorbells          
" => den aktuellen Mode anzeigen
set showmode              
" => Zeilennummern anzeigen
set nu
