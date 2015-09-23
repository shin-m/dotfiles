" Set augroup.
augroup MyAutoCmd
    autocmd!
augroup END

if !has('gui_running') && !(has('win32') || has('win64'))
    autocmd MyAutoCmd BufWritePost $MYVIMRC nested source $MYVIMRC
else
    autocmd MyAutoCmd BufWritePost $MYVIMRC source $MYVIMRC |
                \if has('gui_running') | source $MYGVIMRC
    autocmd MyAutoCmd BufWritePost $MYGVIMRC if has('gui_running') | source $MYGVIMRC
endif

" Display number of rows
set number

" Don't redraw while executing macros
set lazyredraw

" Enable the mode line
set modeline

" The length of the mode line
set modelines=5

" Vim internal help with the command K
set keywordprg=:help

" Language help
set helplang& helplang=ja

" Ignore case
set ignorecase

" Smart ignore case
set smartcase

" Enable the incremental search
set incsearch

" Emphasize the search pattern
set hlsearch

" Emphasize the matching parenthesis
set showmatch

" Blink on matching brackets
set matchtime=1

" Use tabs instead of spaces
set expandtab

" Show line and column number
set ruler
set rulerformat=%m%r%=%l/%L

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Blank is inserted only the number of 'shiftwidth'.
set smarttab

" Set command window height to reduce number of 'Press ENTER...' prompts
set cmdheight=2

" Show last command in status line
set showcmd

" History size
set history=10000

" Display long lines on the next line
set wrap

" Use clipboard
if has('clipboard')
  set clipboard=unnamed
endif
