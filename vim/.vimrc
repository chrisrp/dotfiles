execute pathogen#infect()

set nocompatible

syntax on          "enable syntax highlight.
filetype on        "enable filetype detection
filetype indent on "enable file type specific indenting
filetype plugin on "enable file type specific plugins

"indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "change tabs to spaces
set autoindent
set smartindent

if has("autocmd")
  filetype plugin indent on
endif

"add some line space for easy reading
set linespace=4

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"solarized
set background=dark
colorscheme solarized
set t_Co=256                        " force vim to use 256 colors
let g:solarized_termcolors=256      " use solarized 256 fallback

"store lots of :cmdline history
set history=500

set showcmd "show incomplete cmds down the bottom
set showmode "show current mode down the bottom

set incsearch "find the next match as we type the search
set hlsearch "hilight searches by default

set number "add line numbers
set showbreak=...
set wrap linebreak nolist


"============================
"remove trailing spaces
"============================
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,cucumber autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"============================

" --------- NERDTree --------------
"autocmd vimenter * NERDTree
map <C-t> :NERDTreeToggle <CR>

"fecha o vim se o nerdtree for o único aberto.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") |q| endif

"ragtag
let g:ragtag_global_maps=1

"set the indicator at length of 80
set colorcolumn=80

"========== creates new line without entering insert mode
nmap <CR> o<Esc>

"===== Run tests ======================
function! RunSpecs()
  exec ":w"
  exec ":! bundle exec rspec --color "
endfunction

nmap <C-r> :call RunSpecs()<cr>

"====== Run features =========
function! RunFeatures()
  exec ":w"
  exec ":!rake cucumber"
endfunction

nmap <C-f> :call RunFeatures()<cr>

"===================================================================
" Enables javascript checkers 
"===================================================================
let g:syntastic_javascript_checkers = ['jsl']
"===================================================================
"====== Save Ctrl+s
map <C-q> <esc>:q<cr>
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

nmap <leader>c :RuboCop<cr> 

"===================================================================
function! RunCurrentSpec()
  exec ":w"
  exec ":! bundle exec rspec " . @%
endfunction

nmap <C-n> :call RunCurrentSpec()<cr>

"====== Share clipboard
let s:uname = substitute(system("uname"), '\n\+$', '', '')
if s:uname == "Darwin"
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif
