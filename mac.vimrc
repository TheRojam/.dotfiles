set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" personal Pluginlist
Plugin 'tpope/vim-fugitive'
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
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gabrielelana/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
" Vim plugin for previewing markup files
Plugin 'spf13/vim-preview'
" Autopair/complete for brackets, 
Plugin 'auto-pairs'
Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'
" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'kamykn/spelunker.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'willthames/ansible-lint'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'snipMate'
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
" set statusline for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" set airline statusline
set laststatus=2
" turn powerline fonts on
let g:airline_powerline_fonts = 1
" set theme at start
let g:airline_theme='dark'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled =1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" => Backups ausschalten
set nobackup 
" => Zeile und Spalte anzeigen
set ruler                  
" keine Rechtschreibpruefung
set nospell
" Rechtschreibprüfung in DE
"set spell spelllang=de_de
" su backspace als delete
set backspace=indent,eol,start
" =>  ~/.exrc nicht benutzen
set noexrc                
" => nicht piepsen, wenn man an Textbegrenzungen anstößt o.ä.
set noerrorbells          
" => den aktuellen Mode anzeigen
set showmode              
" => Zeilennummern anzeigen
set nu
" => Encondig auf UTF-8
set encoding=utf-8
" Live Preview LaTeX
let g:livepreview_previewer = 'open -a Preview'

" spelunker whitelist
let g:spelunker_white_list_for_user = [ 'vimrc']
"filetype plugin on
