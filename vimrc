" Restart Vim, and run the :PlugInstall statement to install your plugins.
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-characterize', { 'tag': 'v1.1' }
Plug 'flazz/vim-colorschemes'
Plug 'sainnhe/everforest'
Plug 'ekalinin/Dockerfile.vim'
Plug 'editorconfig/editorconfig-vim', { 'tag': 'v1.1.1' }
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'preservim/nerdtree', { 'tag': '6.10.16' }
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/spec.vim'
Plug 'godlygeek/tabular'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'cakebaker/scss-syntax.vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'
" Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'dhruvasagar/vim-zoom', { 'tag': 'v0.3.2' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

" Important!! for colorscheme (everforest)
if has('termguicolors')
    set termguicolors
endif
" For dark version.
set background=dark

let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
let g:everforest_transparent_background = 1
colorscheme everforest

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
let g:airline_theme='everforest'

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

" Auto apply schema to composer.json file
autocmd BufRead,BufNewFile composer.json Vison composer.json

" Configure changelog
let g:changelog_username = 'Marcin Morawski <marcin@morawskim.pl>'
let g:changelog_dateformat = '%Y-%m-%d'

" let g:UltiSnipsExpandTrigger="<tab>"
autocmd FileType php UltiSnipsAddFiletypes wordpress

let g:used_javascript_libs = 'jquery,chai,react'

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

" Set sh file type for files /tmp/bash-fc*
autocmd BufNewFile,BufRead /tmp/bash-fc* set ft=sh

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

" .editorconfig skeleton
au BufNewFile .editorconfig 0r ~/.vim/skeletons/editorconfig

" Apache vhost simple skeleton
au BufNewFile /etc/apache2/vhosts.d/*.conf 0r ~/.vim/skeletons/apache_vhost.conf

" webpack config skeleton
au BufNewFile webpack.config.js 0r ~/.vim/skeletons/webpack.config.js

" gitreview config skeleton
au BufNewFile .gitreview 0r ~/.vim/skeletons/gitreview

" gitlab-ci skeleton
au BufNewFile .gitlab-ci.yml 0r ~/.vim/skeletons/gitlab-ci.yml

" phpcs skeleton
au BufNewFile .phpcs.xml,phpcs.xml,.phpcs.xml.dist,phpcs.xml.dist 0r ~/.vim/skeletons/phpcs.xml

" phpunit skeleton
au BufNewFile phpunit.xml,phpunit.xml.dist 0r ~/.vim/skeletons/phpunit.xml.dist

" Listing snippets with <C-Tab> doesn’t work in vim (in gvim work)
let g:UltiSnipsListSnippets="<c-j>"

" Tabularize map
vnoremap <Leader>l= :Tabularize /=<CR>
vnoremap <Leader>l\| :Tabularize /\|<CR>
vnoremap <Leader>l: :Tabularize /:\zs<CR>

" Dir where you want to store notes
" let g:notes_directories = ['~/Dokumenty/Notes']

" map <CTRL-N> to toggle nerd
map <C-n> :NERDTreeToggle<CR>

" highlight column 80
set colorcolumn=80
highlight ColorColumn ctermbg=233

" F8 key will toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>

" map <CTRL-L> in insert mode to open snippets window and filter them by both columns
inoremap <C-l> <esc>:Snippets<CR>
autocmd VimEnter * command! -bar -bang Snippets
    \ call fzf#vim#snippets({'options': '-n 1,2'}, <bang>0)

" Show trailing whitespace
"highlight ExtraWhitespace ctermbg=red guibg=red

" The root is considered to be the first directory containing an item with
" one of these names:
" let g:projectlocal_project_markers = ['.git', '.hg', '.idea']

" Enable modeline
set modeline
set modelines=5

" vdebug require python2, but ultisnips load python3
" We force using python2 for ultisnips
" let g:UltiSnipsUsePythonVersion = 2

" Specify directories to store schema files.
" let g:vison_data_directory = "$HOME/.vim/vison"

" Use powerline symbols.
let g:airline_powerline_fonts = 1

" minimum size of a file needed for it to be considered as a "LargeFile",
" in megabytes
" let g:LargeFile = 70

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

" query string that will be passed to https://carbon.now.sh (for plugin vim-carbon-now-sh)
"let g:carbon_now_sh_options =
"\ { 'ln': 'true',
"  \ 't': 'nord',
"  \ 'fm': 'Monoid' }

nnoremap <F10> :NERDTreeToggle<CR>
