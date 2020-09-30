syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set incsearch
set showcmd
set nowrap
set noswapfile
set number
set relativenumber
set clipboard=unnamed
set clipboard^=unnamedplus
set foldmethod=indent
set foldlevel=1
set splitbelow
set splitright

filetype plugin indent on
set wildmode=longest,list
set wildmenu

let mapleader=" "

imap jk <ESC>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>h <C-W><C-H>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>V :hsplit<CR>
nnoremap <leader>x :close<CR>
nnoremap <leader>X :only<CR>
nnoremap <TAB> za
tnoremap jk <C-W>N  

let g:haskell_indent_disable = 1

command Htest vert term stack test 
command HGHCI vert term stack ghci
autocmd FileType haskell  nnoremap <buffer> <leader>t :Htest<CR>
autocmd FileType haskell  nnoremap <buffer> <leader>i :HGHCI<CR>
"inoremap <expr> <C-j> pumvisible() ? "\<C-N>" : "<C-j>"
"inoremap <expr> <C-k> pumvisible() ? "\<C-P>" : "<C-k>"

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

nnoremap <silent><space>cc  :<C-u>CocList commands<cr>
nnoremap <silent><space>cd  :<C-u>CocList diagnostics<cr>
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
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
Plugin 'yosiat/oceanic-next-vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'andys8/vim-elm-syntax', { 'for': ['elm'] }
Plugin 'dart-lang/dart-vim-plugin'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme OceanicNext

"hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
"hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
hi  Pmenu ctermfg=white ctermbg=238 gui=None guibg=#64666d
hi PmenuSel ctermfg=white ctermbg=24 guibg=#204a87 gui=None

" Enable wordcount
let g:airline#extensions#wordcount#enabled = 1
" Add notes to filetypes
let g:airline#extensions#wordcount#filetypes = '\vnotes|vimwiki|md|help|markdown|rst|org|text|asciidoc|tex|mail'


"" Vimwiky settings
let g:vimwiki_list = [
   \  {'path': '~/vimwiki/' , 'syntax': 'markdown', 'ext': '.md'} ,
   \ {'path': '~/projects/junedmunshi.github.io/' , 'syntax': 'markdown', 'ext': '.md'}] 
au BufRead,BufNewFile *.md set filetype=vimwiki
autocmd BufRead,BufNewFile *.wiki setlocal spell 

""CtrlP settings
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
"let g:ctrlp_map ="<leader><leader>"
"
"nnoremap <leader><leader> :Files<CR>
"nnoremap <leader>b :Buffers<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <leader>f :Ag<CR>
"
nnoremap <leader><leader> :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
"nnoremap <leader>T :CtrlPTag<CR>

let g:ctrlp_working_path_mode = 'ra'
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
