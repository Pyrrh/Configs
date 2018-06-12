set nocompatible
set number              " Show line numbers
  " Relative or absolute number lines
function! NumberToggle()
  if(&rnu == 1)
    set nornu
  else
    set rnu
  endif
endfunction

nnoremap <C-n> :call NumberToggle()<CR>

vnoremap<C-c> "+y        " Maps Control-c to copy to clipboard
noremap<C-v> "+p        " Maps Control-p to paste from clipboard

set guioptions=i "hide menus
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

colorscheme ron

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:map <F6> <C-W>w

noremap<C-c> "+y        " Maps Control-c to copy to clipboard
noremap<C-v> "+p        " Maps Control-p to paste from clipboard

" <Ctrl-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

nmap <silent> <C-N> :silent noh<CR>

" Toggles Tagbar show/hide with F12
nmap <F12> :TagbarToggle<CR>

filetype plugin indent on

syntax on

" Misc Config Settings
"
filetype on
if $TERM == "xterm-256color"
  set t_Co=256
endif

set guifont=Monospace\ 12

set hlsearch
set incsearch           " Incremental search (highlight as you type)
set guioptions=i        " Hide menu

set tabpagemax=100

set linebreak           " Don't break in middle of words
set showcmd             " Show commands as you type

set tabstop=2 softtabstop=0 expandtab shiftwidth=2
%retab!

set ruler               " show the cursor position all the time
set formatoptions+=ro   " Automatically do * in block comments

autocmd FileType tex,txt setlocal spell spelllang=en_us

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set hidden
set wrap
set tabstop=3
set autoindent
set copyindent

set shiftwidth=3
set expandtab
set showmatch
set smarttab
set hlsearch
set incsearch

set so=10
set history=1000
set undolevels=1000
set title
set noerrorbells

set splitbelow
set splitright
set nolist

highlight OverLength ctermbg=6 ctermfg=white guibg=#592929
match OverLength /\%>76v.\+/

