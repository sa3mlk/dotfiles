" Must have
set nocompatible

" Scroll with Space and Backspace
noremap <BS> <C-b>
noremap <space> <C-f>

" Enhance command-line completion
set wildmenu

" Use comma as mapleader
let mapleader=","

" Enable line numbers
set number

" We are good up to 99999 lines
set numberwidth=5

" Always show current positions along the bottom
set ruler

" Show the command being typed
set showcmd

" Show matching brackets
set showmatch

" Do not wrap lines
set nowrap

" Tab is four characters
set shiftwidth=4
set tabstop=4

" Highlight current line
set cursorline

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Disable error bells
set noerrorbells

" Don't show intro message
set shortmess=atI

" Switch buffer with Ctrl+Tab and Ctrl+Shift+Tab
map <C-Tab> <ESC>:bn!<CR>
map <C-S-Tab> <ESC>:bp!<CR>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Open URL on current line
function! Browser ()
  let line0 = getline (".")
  let line = matchstr (line0, "http[^ )]*")
  let line = escape (line, "#?&;|%")
  exec ':silent !firefox -new-tab ' . "\"" . line . "\""
endfunction
map <leader>w :call Browser ()<CR>

" Turn syntax highlighting on
syntax on

