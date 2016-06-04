set nocompatible
" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  "
  " see :h vundle for more details or wiki for FAQ
  " Put your non-Plugin stuff after this line
  "
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'L9'

  " Misc Toolbox
  Plugin 'Superbil/llvm.vim'
  Plugin 'majutsushi/tagbar'
  Plugin 'tpope/vim-surround'
  Plugin 'wesQ3/vim-windowswap'
  Plugin 'craigemery/vim-autotag'
  Plugin 'kien/ctrlp.vim'
  " Plugin 'Valloric/YouCompleteMe'
  Plugin 'EinfachToll/DidYouMean'
  " TPope
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-fugitive'

  " Scrooloose
  Plugin 'scrooloose/syntastic'
  Plugin 'scrooloose/nerdtree'

  " Airline
  Plugin 'bling/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  " Latex
  Plugin 'xuhdev/vim-latex-live-preview'

  " Tab things
  Plugin 'ervandew/supertab'
  Plugin 'godlygeek/tabular'
call vundle#end()

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

noremap<C-c> "+y        " Maps Control-c to copy to clipboard
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

" ===============================================
" NERDTree
"
" opens nerdtree when opening with a file
autocmd vimenter * NERDTree
" Go to previous (last accessed) window
autocmd VimEnter * wincmd p
" maps nerdtree to control + n
map <C-t> :NERDTreeToggle<CR>
" Close vim if nerdtree is last window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize = 15
" ===============================================
"
" You Complete Me (YCM)
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" ===============================================
" Vim-Airline

" Turns on display buffers when only one tab open
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
" ===============================================
" Tagbar


" ===============================================
" Ctrl-p


" ===============================================
" Latex Live-View 
let g:livepreview_previewer = 'okular'

" ===============================================
" Misc Config Settings
"
filetype on
if $TERM == "xterm-256color"
  set t_Co=256
endif

set background=dark

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if has("gui_running")
  colorscheme sorcerer
  highlight Search guibg=black guifg=yellow gui=underline
else
  colorscheme ron 
  highlight Colorcolumn ctermbg=6
  highlight Colorcolumn guibg=Black
  highlight Search ctermbg=black ctermfg=yellow cterm=underline
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

