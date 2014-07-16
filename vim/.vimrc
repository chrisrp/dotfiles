execute pathogen#infect()

set nocompatible
syntax on          "enable syntax highlight.
filetype on        "enable filetype detection
filetype indent on "enable file type specific indenting
filetype plugin on "enable file type specific plugins


"add some line space for easy reading
set linespace=4

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd "show incomplete cmds down the bottom
set showmode "show current mode down the bottom

set incsearch "find the next match as we type the search
set hlsearch "hilight searches by default

set number "add line numbers
set showbreak=...
set wrap linebreak nolist

"indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

if has("autocmd")
  filetype plugin indent on
endif

