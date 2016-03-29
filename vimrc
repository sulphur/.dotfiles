"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath^=/Users/piotr/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('/Users/piotr/.vim/bundle'))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'flazz/vim-colorschemes'
  NeoBundle 'elixir-lang/vim-elixir'
  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'scrooloose/nerdtree'
  NeoBundle 'ctrlpvim/ctrlp.vim'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'janko-m/vim-test'

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
colorscheme solarized

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set ruler

" strip whitespaces
autocmd BufWritePre * :%s/\s\+$//e

set expandtab
set shiftwidth=2
set softtabstop=2

"react
"let g:jsx_ext_required = 0 " Allow JSX in normal JS files




