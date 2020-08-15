syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set incsearch
set showcmd
set nowrap
set noswapfile
set number
set relativenumber
set clipboard=unnamed
set clipboard^=unnamedplus

filetype plugin indent on
set wildmode=longest,list
set wildmenu

let mapleader=" "

imap jk <ESC>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vimwiki/vimwiki'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Enable wordcount
let g:airline#extensions#wordcount#enabled = 1
" Add notes to filetypes
let g:airline#extensions#wordcount#filetypes = '\vnotes|vimwiki|md|help|markdown|rst|org|text|asciidoc|tex|mail'


"" Vimwiky settings
let g:vimwiki_list = [{'path': '~/vimwiki/' , 'syntax': 'markdown', 'ext': '.md'}] 
au BufRead,BufNewFile *.md set filetype=vimwiki
autocmd BufRead,BufNewFile *.wiki setlocal spell 

""CtrlP settings
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
let g:ctrlp_cmd = 'CtrlPMixed'
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
