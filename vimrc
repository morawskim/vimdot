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

" Auto apply schema to composer.json file
autocmd BufRead,BufNewFile composer.json Vison composer.json

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

" Listing snippets with <C-Tab> doesn’t work in vim (in gvim work)
let g:UltiSnipsListSnippets="<c-j>"

" Tabularize map
vnoremap <Leader>l= :Tabularize /=<CR>
vnoremap <Leader>l\| :Tabularize /\|<CR>
vnoremap <Leader>l: :Tabularize /:\zs<CR>

" Dir where you want to store notes
let g:notes_directories = ['~/Dokumenty/Notes']

" map <CTRL-N> to toggle nerd
map <C-n> :NERDTreeToggle<CR>

" highlight column 80
set colorcolumn=80
highlight ColorColumn ctermbg=233

" F8 key will toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>

" Show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" The root is considered to be the first directory containing an item with
" one of these names:
let g:projectlocal_project_markers = ['.git', '.hg', '.idea']

" Enable modeline
set modeline
set modelines=5

" vdebug require python2, but ultisnips load python3
" We force using python2 for ultisnips
let g:UltiSnipsUsePythonVersion = 2

" Specify directories to store schema files.
let g:vison_data_directory = "$HOME/.vim/vison"
