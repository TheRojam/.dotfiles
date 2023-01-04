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
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'ryanoasis/vim-devicons'
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
Plugin 'dpelle/vim-LanguageTool'
Plugin 'ledger/vim-ledger'
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'chr4/nginx.vim'
Plugin 'chr4/sslsecure.vim'
Plugin 'juliosueiras/vim-terraform-completion'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'phenomenes/ansible-snippets'
Plugin 'm-kat/aws-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'WolfgangMehner/bash-support'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on
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

set lcs+=space:·
syntax on
" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" UltarSnipsConfig
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



"filetype plugin on
au BufRead,BufNewFile *.md set filetype=markdown
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
au BufRead,BufNewFile *.yml set filetype=yaml.ansible
" Tagbar Toggle + settings
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_ansible = {
	\ 'ctagstype' : 'ansible',
	\ 'kinds' : [
		\ 't:tasks'
	\ ],
	\ 'sort' : 0
\}
let g:tagbar_type_tf = {
  \ 'ctagstype': 'tf',
  \ 'kinds': [
    \ 'r:Resource',
    \ 'R:Resource',
    \ 'd:Data',
    \ 'D:Data',
    \ 'v:Variable',
    \ 'V:Variable',
    \ 'p:Provider',
    \ 'P:Provider',
    \ 'm:Module',
    \ 'M:Module',
    \ 'o:Output',
    \ 'O:Output',
    \ 'f:TFVar',
    \ 'F:TFVar'
  \ ]
\ }

let g:vimwiki_list = [{'path': '~/vim-notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:BASH_AuthorName   = 'Anton Mueller'
let g:BASH_Email        = 'email@antonmueller.xyz'
let g:BASH_Company      = 'Company Name'

