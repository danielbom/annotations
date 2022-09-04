" Examples
" https://github.com/ashfinal/vimrc-config/blob/master/.vimrc

" Show line numbers
set number relativenumber

" Shows corrent line and column on the bottom panel
set ruler

" Don't backup orignal files
set nobackup
set nowritebackup
set noundofile

" Shows the file title
set title

" Improves smoothness of redrawing
set ttyfast

" Don't redraw while executing macros
set lazyredraw

" Don't emit signals when occurs errors
" set noerrorbells
set novisualbell

" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a

" With a map leader it's possible to do extra key combinations
let mapleader = "\<Space>"

" Enable clipboard if possible
if has('clipboard')
    if has('unnamedplus') " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Also break at a multi-byte character above 255
set formatoptions+=m
" When joining lines, don't insert a space between two multi-byte characters
set formatoptions+=B
" Where it makes sense, remove a comment leader when joining lines
set formatoptions+=j
" When formatting text, recognize numbered lists
set formatoptions+=n

set autoindent " Auto indent
" set smartindent " Smart indent

filetype on
filetype plugin on
filetype plugin indent on

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set smarttab

" Use spaces instead of tabs
set expandtab 

" Wrap lines
set wrap 

" set iskeyword+=-
set whichwrap+=<,>,h,l,[,]

" clear vert split and empty lines fillchar
if has('nvim')
    set fillchars=vert:\ ,eob:\ ,
else
    set fillchars=vert:\ ,
endif

" Use these symbols for invisible chars
set listchars=tab:¦\ ,eol:¬,trail:⋅,extends:»,precedes:«

set foldlevel=100 " unfold all by default

" Enable syntax highlighting
syntax enable

set shortmess=aoOtTI " Abbrev. of messages

" Highlight current line
" set cursorline

" the mouse pointer is hidden when characters are typed
set mousehide

" Height of the command bar
set cmdheight=1
" Turn on the Wild menu
set wildmenu
set wildmode=list:longest,full
" Ignore compiled files
set wildignore=*.so,*.swp,*.pyc,*.pyo,*.exe,*.7z
if has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*,*\desktop.ini
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

imap jk <Esc>

" Set to auto read when a file is changed from the outside
set autoread

" Swap files are necessary when crash recovery
if !isdirectory($HOME . "/.vim/swapfiles") | call mkdir($HOME . "/.vim/swapfiles", "p") | endif
set dir=$HOME/.vim/swapfiles//

" Turn persistent undo on, means that you can undo even when you close a buffer/VIM
"set undofile
set undolevels=1000

" For regular expressions turn magic on
set magic

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Disable highlight when <Backspace> is pressed
map <Space> :noh<CR>

" more powerful backspacing
set backspace=indent,eol,start  


" Always show status line
set laststatus=2
set statusline=%<%f\ " filename
set statusline+=%w%h%m%r " option
set statusline+=\ [%{&ff}]/%y " fileformat/filetype
set statusline+=\ [%{getcwd()}] " current dir
set statusline+=\ [%{&encoding}] " encoding
set statusline+=%=%-14.(%l/%L,%c%V%)\ %p%% " Right aligned file nav info

