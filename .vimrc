" Must have
set nocompatible
" Enhance command-line completion
set wildmenu

" Use comma as mapleader
let mapleader=","

" Enable line numbers
set number

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

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

