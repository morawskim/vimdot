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

" Highlight the current line and current column - turn off due to bad perfomance
" set cursorcolumn
" set cursorline
" hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Show cursor location in the bottom
set ruler

" Keeps a buffer above and below line when scrolling
set scrolloff=3

" Appear 'laststatus' all the time
set laststatus=2

" Set theme for vim-airline
let g:airline_theme='luna'

" Enable mouse
set mouse=a

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Disable spellchecking (to enable use set spell spelllang=en_us)
set nospell

" Flags Vagrantfiles as Ruby for syntax highlighting
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" Flags Vagrantfiles as Ruby for syntax highlighting
au BufRead,BufNewFile Vagrantfile set filetype=ruby

" let g:UltiSnipsExpandTrigger="<tab>"
autocmd FileType php UltiSnipsAddFiletypes wordpress

let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter'

" Enable loading the plugin files for specific file types with
filetype plugin on

" Syntax for xdebug trace file
augroup filetypedetect
au BufNewFile,BufRead *.xt  setf xt
augroup END

" Set changelog packager
let g:spec_chglog_packager = 'Marcin Morawski <marcin@morawskim.pl>'
let g:spec_chglog_revision = 0

" Overwrite openSUSE SKEL_spec function declared in /etc/vimrc
:so ~/.vim/functions/spec.vim

" Save a file in vim without root permission using sudo. Map this command to 'SS'
command SS :execute ':w !sudo tee %'

" Use apache syntax for files  *.template in /etc/apache2/vhosts.d directory
autocmd BufNewFile,BufRead /etc/apache2/vhosts.d/*.template set syntax=apache

" Configuration for indentLine plugin
let g:indentLine_color_term = 250
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceChar = '·'
" See https://github.com/Yggdroot/indentLine/issues/69
let g:indentLine_leadingSpaceEnabled  = 0

" Closetag filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml"

" Enable rainbow parentheses plugin
let g:rainbow_active = 1

" Gulpfile skeleton
au BufNewFile gulpfile.js 0r ~/.vim/skeletons/gulpfile.js

