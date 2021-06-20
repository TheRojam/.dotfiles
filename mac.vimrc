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
" synstastic - syntax errors
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-vimlparser'
Plugin 'pearofducks/ansible-vim'
" vim-airline-themes via .vim-folder
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" nerdtree from github
Plugin 'gabrielelana/vim-markdown'
Plugin 'groenewege/vim-less'
Plugin 'benmills/vimux'
" Autopair/complete for brackets, 
Plugin 'auto-pairs'
Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'
Plugin 'chrisbra/csv.vim'
Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'snipMate'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'cespare/vim-toml'
Plugin 'preservim/tagbar'
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
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#syntastic#enabled =1
" turn powerline fonts on
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1

" set statusline for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

set rtp+=/usr/local/opt/fzf

syntax on

"filetype plugin on
"
au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible
" Tagbar Toggle
" nmap <F8> :TagbarToggle<CR>
