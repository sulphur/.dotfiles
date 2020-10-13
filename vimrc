"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath^=~/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('~/.vim/bundle'))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'elixir-lang/vim-elixir'
  NeoBundle 'vim-ruby/vim-ruby'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'janko-m/vim-test'
  NeoBundle 'ElmCast/elm-vim'
  NeoBundle 'hashivim/vim-terraform'

  " testing :
"  NeoBundle 'jelera/vim-javascript-syntax'
"  NeoBundle 'pangloss/vim-javascript'
"  NeoBundle 'nathanaelkane/vim-indent-guides'
"  NeoBundle 'Raimondi/delimitMate'

" JavaScript
  NeoBundle 'pangloss/vim-javascript'

" react
  NeoBundle 'mxw/vim-jsx'

  " Required:
  call neobundle#end()

  " Required:
  filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax enable
set encoding=utf-8

set number
set hidden
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set ruler

" strip whitespaces
autocmd BufWritePre * :%s/\s\+$//e

set expandtab
set shiftwidth=2
set softtabstop=2
set wildmenu

set directory=/tmp

let mapleader = "\<Space>"

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"react
"let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" vim tests mapping
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :w<CR>:TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
" let test#elixir#espec#file_pattern = '\v_spec|_shared\.exs$'
" let test#ruby#rspec = '_spec\.rb'


" make not dependant for on line ends
" set whichwrap=b,s,h,l,<,>,[,],~

"set textwidth=90
"set cc=+1

set grepprg=ack\ --nogroup

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set t_Co=256

au! BufNewFile,BufRead *.svelte set ft=html
