" set up pathogen, https://github.com/tpope/vim-pathogen
filetype off
call pathogen#infect()
filetype plugin indent on

set nocompatible

syntax enable
set background=dark                                          " dark backgrounds rule
colors molokai                                               " molokai color scheme"

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set showmatch                                                " Show matching brackets when text indicator is over them
set hlsearch                                                 " Highlight search results, :set nohlsearch to turn it off
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set history=1000                                             " Sets how many lines of history VIM has to remember
set noerrorbells                                             " No error bells
set novisualbell                                             " No visual bell
set t_vb= 
set tm=500
set ffs=unix,dos,mac                                         " Use Unix as the standard file type
set nobackup                                                 " Turn backup off
set nowb
set noswapfile
set guioptions-=L                                           " disable NERDTree left scroll bar
set guioptions-=T                                           " disable toolbar
set cursorline                                              " hightlight current line
set listchars=tab:▸\ ,trail:▫                               " display arrow and square for spaces


noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm           " Remove the Windows ^M - when the encodings gets messed up

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" keyboard shortcuts
let mapleader = ','

" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" plugin settings
"

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" GIT GUTTER
let g:gitgutter_enabled = 1                             " On by default

" NERDTree settings
let g:NERDSpaceDelims=1
let g:NERDTreeShowHidden=1                              " Show hidden files

"
" vim air line settings
let g:airline_theme = 'wombat'

"ctrl-p settings
set runtimepath^=~/.vim/bundle/ctrlp.vim                " Load ctrlp vim plugin
let g:ctrlp_map = '<c-p>'                               " 
let g:ctrlp_cmd = 'CtrlP'                               "


