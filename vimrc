execute pathogen#infect()

colorscheme Tomorrow-Night-Eighties

" Necesary for lots of cool vim things
set nocompatible

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
set incsearch

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" highlight matching [{()}]
set showmatch

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
" Load filetype-specific indent files
filetype indent on

" Highlight the current line and current column
set cursorcolumn
set ttyfast
set lazyredraw
set cursorline
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Show cursor location in the bottom
set ruler

" Keeps a buffer above and below line when scrolling
set scrolloff=3

" Appear 'laststatus' all the time
set laststatus=2

" Show current mode in command-line.
set showmode

" Show already typed keys when more are expected.
set showcmd

" enable folding
set foldenable
" open most folds by default
set foldlevelstart=10
" 10 nested fold max
set foldnestmax=10
" fold based on indent level
set foldmethod=indent

" Set theme for vim-airline
let g:airline_theme='luna'

" Enable mouse
set mouse=a

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Wildmenu
set wildmode=longest:full,full
set wildmenu

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

" Set sh file type for files /tmp/bash-fc-*
autocmd BufNewFile,BufRead /tmp/bash-fc-* set ft=sh

" Set sql file type for files /tmp/sql*
autocmd BufNewFile,BufRead /tmp/sql* set ft=sql

" Configuration for indentLine plugin
let g:indentLine_color_term = 250
let g:indentLine_char = '│'
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

" Puppet facter, type and provider skeletons
au BufNewFile */lib/puppet/provider/*.rb 0r ~/.vim/skeletons/puppet_provider.rb
au BufNewFile */lib/puppet/type/*.rb 0r ~/.vim/skeletons/puppet_type.rb
au BufNewFile */lib/facter/*.rb 0r ~/.vim/skeletons/puppet_facter.rb

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

" Use powerline symbols.
let g:airline_powerline_fonts = 1

" minimum size of a file needed for it to be considered as a "LargeFile",
" in megabytes
let g:LargeFile = 70

" avoid loading EditorConfig for any remote files over ssh and fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo
