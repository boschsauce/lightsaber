filetype off
call pathogen#infect()                                      " set up pathogen, https://github.com/tpope/vim-pathogen
filetype plugin indent on

set nocompatible
let mapleader = ','                                          " keyboard shortcuts
set autoindent                                               " turn off the auto indent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
"" Copy/Paste/Cut

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

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
set guioptions-=L                                            " disable NERDTree left scroll bar
set guioptions-=T                                            " disable toolbar
set listchars=tab:▸\ ,extends:❯,precedes:❮
set cursorline                                               " hightlight current line
set switchbuf=useopen                                        " This orders Vim to open the buffer.
set mouse=a                                                  " Enable basic mouse behavior such as resizing buffers.
set shell=/bin/zsh                                           " default shell to zsh
"set autochdir                                               " automatically set the working directory to the file being edited
set nowrap                                                   " turn off word wrap
set nolazyredraw                                             " Don't redraw while executing macros
set binary                                                   " makes vim more suitable for editing binary files http://usevim.com/2012/06/20/vim-binary-files/

noremap <leader>bp :bprevious<cr>                            " , bp to to got previous buffer
noremap <leader>bn :bnext<cr>                                " , bn to go to next buffer
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm           " Remove the Windows ^M - when the encodings gets messed up
noremap <leader><space> :noh<cr>:call clearmatches()<cr>     " clear search matching

autocmd BufWritePre * :%s/\s\+$//e                           " remove trailing whitespace
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd VimResized * :wincmd =                               " automatically rebalance windows on vim resize
autocmd! BufWritePost vimrc source ~/.vimrc                  " automatically reload vimrc if edited

au FocusLost    * :silent! wall                              " Save when losing focus

if exists('$TMUX')  " Support resizing in tmux
set ttymouse=xterm2
endif

"=============================================================================================================================
" plugin settings
"=============================================================================================================================

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"=============================================================================================================================
" GIT GUTTER https://github.com/airblade/vim-gitgutter
"=============================================================================================================================
let g:gitgutter_enabled = 1                                 " On by default

"=============================================================================================================================
" NERDTree settings https://github.com/scrooloose/nerdtree
"=============================================================================================================================
let g:NERDSpaceDelims=1
let g:NERDTreeShowHidden=1                                  " Show hidden files
let NERDTreeChDirMode=2                                     " Should refresh NERDTree when new files are created
nmap 2 :NERDTreeFind<CR>                                    " Number 2 on keyboard hits the current file
nmap 3 :NERDTreeToggle<CR>                                  " Number 3 on keyboard toggles nerdtree

"=============================================================================================================================
" vim air line settings  https://github.com/bling/vim-airline
"=============================================================================================================================
"let g:airline_theme = 'solarized'                             " https://github.com/bling/vim-airline/wiki/Screenshots
let g:airline_theme = 'molokai'
"let g:airline_theme = 'wombat'

"=============================================================================================================================
"ctrl-p settings https://github.com/kien/ctrlp.vim
"=============================================================================================================================
set runtimepath^=~/.vim/bundle/ctrlp.vim                   " Load ctrlp vim plugin
let g:ctrlp_user_command = 'find %s -type f'               " MacOSX/Linux
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'        " Windows (uncomment)
let g:ctrlp_map = '<c-p>'                                  "
let g:ctrlp_cmd = 'CtrlP'                                  "
let g:ctrlp_working_path_mode = 'ra'

"=============================================================================================================================
" vim rspec https://github.com/thoughtbot/vim-rspec
"=============================================================================================================================
let g:rspec_command_launcher = "iterm2"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>


"=============================================================================================================================
" syntastic https://github.com/scrooloose/syntastic
"=============================================================================================================================
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'js'], 'passive_filetypes': ['html', 'css', 'slim'] }


"=============================================================================================================================
" startify -
"=============================================================================================================================
let g:ctrlp_reuse_window = 'startify'
let g:startify_list_order = ['files', 'sessions', 'bookmarks']
let g:startify_custom_header = [
                \ '        .-~|',
                \ '       /   |',
                \ '=============',
                \ ' |         |',
                \ ' |         |',
                \ ' |         |',
                \ ' \---------/',
                \ '  )-------(',
                \ '  (-------)',
                \ '  )-------(  Lightsaber Vim',
                \ '  (-------)  willywos',
                \ '  )-------(  https://github.com/willywos/lightsaber',
                \ '  (-------)',
                \ '  )-------(--+',
                \ ' /---------\ |',
                \ ' | | | | | | |',
                \ ' | | | | | | |',
                \ ' | | | | | | |',
                \ ' | | | | | |-+',
                \ ' | | | | | |',
                \ ' | | | | | |',
                \ ' | | | | | |',
                \ ' | | | | | |',
                \ ' | | | | | |',
                \ '\-----------/',
                \ '',
                \ ]

"=============================================================================================================================
" theme information
"=============================================================================================================================
"set background=dark                                          " dark backgrounds rule
syntax enable
colors molokai
colorscheme molokai

