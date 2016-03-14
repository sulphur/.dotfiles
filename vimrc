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

