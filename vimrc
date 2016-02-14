execute pathogen#infect()

colorscheme twilight256

" Display line numbers
set number

" Enable syntax highlighting
syntax on

" Highlight searches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Show the next match while entering a search (incremental searching)
:set incsearch

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Highlight the current line and current column
set cursorcolumn
set cursorline
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Show cursor location in the bottom
set ruler

" Keeps a buffer above and below line when scrolling
set scrolloff=3

" Appear 'laststatus' all the time
set laststatus=2

" Set theme for vim-airline
let g:airline_theme='luna'
