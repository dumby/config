"    allow filetype detection
filetype on

"    backspace:  '2' allows backspacing" over
"    indentation, end-of-line, and start-of-line.
set backspace=2

"    remove beeps, visual flashes
set noerrorbells
set t_vb=

"    scroll screen when cursor is within 5
set so=5

"    always set line wrap to break between words.  Map up and down to their g
"    equivalents in order to go up and down on display lines, not actual lines
set wrap lbr
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

"    convert tabs to spaces
set expandtab

"    tabs = 4 spaces
set tabstop=4
set softtabstop=4
"    shiftwidth:  Number of spaces to use for each insertion of (auto)indent.
set shiftwidth=4

"    kformatoptions:  Options for the "text format" command ("gq")
set formatoptions=cn

"    hidden:  Allow "hidden" buffers.  A must-have!
set hidden

"    hlsearch :  highlight search - show the current search pattern
"    This is a nice feature sometimes - but it sure can get in the
"    way sometimes when you edit.
set nohlsearch

"    Set incremental search, that is highlight search tag while typing 
set incsearch

"    ignorecase:  ignore the case in search patterns?  set ignorecase
"    but: not if explicitly typed uppercase so be smart! ;)
set smartcase

"    laststatus:  show status line?  Yes, always!
set laststatus=2

"    magic:  Use 'magic' patterns  (extended regular expressions)
"    in search patterns?  Certainly!  (I just *love* "\s\+"!)
set magic

"    shortmess:   Kind of messages to show.   Abbreviate them all!
set shortmess=at

"    showcmd:     Show current uncompleted command?  Absolutely!
set showcmd
"
"    showmatch:   Show the matching bracket for the last ')'?
set showmatch

"    showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
set showmode

"    startofline:  no:  do not jump to first character with page
"    commands, ie keep the cursor in the current column.
set nostartofline

"    statusline:  customize contents of the windows' status line.
"    Show the current buffer number and filename with info on
"    modification, read-only, and whether it is a help buffer
"    (show only when applied), on the right hand side show
"    [curssorposition, line:lines in buffer] percentage of
"    file viewed
set statusline=[%n]\ %f\ %(\ (%M%R%H)%)%=[%2c%V,%3l:%L]\ %p%%\ 

set nocompatible             " Use Vim defaults (much better!)
set ai                       " always set autoindenting on
set viminfo=%,'50,\"100,:100,n~/.viminfo

set ruler
set complete=.,b,u

"    Enable syntax highlighting
syntax on

"    Enable ft- and indent plugins (Requires at least V6)
filetype plugin on
filetype indent on

"    vsplit opens window on the right hand side
if has("vertsplit")
    set splitright
endif

"    Collect all the backup and swap files in one dir
set backupdir=$HOME/vimtmp
set directory=$HOME/vimtmp

set shell=bash\ -f

"   quick switch from insert mode to normal mode
imap ;l <esc>
imap ;a <esc>
"   toggle line numbers on and off
map <C-Z><C-Z> :set number! <CR>

"   shortcuts for navigating buffers
map <C-h>  <C-W>h
map <C-j>  <C-W>j
map <C-k>  <C-W>k
map <C-l>  <C-W>l

"   toggles search highlight, highlights current word, use n to search
map <F10> :set invhls<CR>:let @/="<C-r><C-w>"<CR>/<BS>

vmap <TAB>     >
vmap <S-TAB>   <

"   In normal mode: TAB and Shift-TAB to change buffers
nmap <TAB>     :bn<CR>
nmap <S-TAB>   :bp<CR>

"   hitting enter inserts on next line
nmap <CR> o

"   F7 shows toggles showing whitespace symbols
map <F7> :set list!<CR>
imap <F7> :set list!<CR>

"   SAVED BUT UNUSED
"       suffixes:    Ignore filename with any of these suffixes
"                    when using the ":edit" command.
"                    Most of these are files created by LaTeX.
"potentially useful, deactivating for now
"set suffixes=.aux,.bak,.dvi,.gz,.idx,.log,.ps,.swp,.tar,.ilg,.bbl,.toc,.ind,.axp,.i386,.hpux,.osf1
