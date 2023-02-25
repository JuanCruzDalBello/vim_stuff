syntax on

set number relativenumber

"tabsize for tab key
set tabstop=4

"tabsize for >> and <<
set shiftwidth=4

"set backspace key to work as usual 
set backspace=indent,eol,start

"disable error sound effect
set belloff=all

set smartindent

set autoindent

"set font and font size
set guifont=Fixedsys:h14


" ---------- Plugins ----------
call plug#begin('~\.vimfiles\plugged') 

Plug 'vim-scripts/AutoComplPop'
Plug 'preservim/nerdtree', {'on' : 'NERDTreeToggle'}
Plug 'junegunn/goyo.vim', {'for' : 'markdown'}

call plug#end()
" ---------- // Plugins ----------

" ------ Autocompletion ------

set completeopt=menuone,noinsert
set shortmess+=c

" ------ // Autocompletion ------


" --------- Remapping ---------

"autocomplete matching braces and quotes
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap < <><Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

"empty matching braces -> key+space
inoremap {<Space> {}
inoremap (<Space> ()
inoremap [<Space> []
inoremap <<Space> <>

"smart curly braces indentation, needs smartindent
inoremap {<Enter> {<Enter>}<Esc>O

"map Ctrl+Backspace to work as usual on insert mode.
imap <C-BS> <C-W>

"map + key to duplicate a line down
nnoremap + yyp

"map ' and ¿ keys to 'previous tab' and 'next tab'. <CR> = <Enter>
nnoremap ' :tabp<CR>
nnoremap ¿ :tabn<CR>

" --------- // Remapping ---------

