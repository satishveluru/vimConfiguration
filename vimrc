  set wrap
  " searched as characters are entered
  set incsearch
  " highlight matched
  set hlsearch
 
  :set autoindent  -- in vim editor 
  
  9 " enable syntax processing
 10 syntax enable
 11
 12 "Always show current position
 13 set ruler
 14
 15 "Height of the commad bar
 16 set cmdheight=2
 17
 18 "when searching try to be smart about cases
 19 set smartcase
 20
 21 " show matching brackets when text  indicator is over time
 22
 23 " Enable 256 colors palette in Gnome Terminal
 24 if $COLORTERM == 'gnome-terminal'
 25     set t_Co=256
 26 endif
 27
 28
 29 "awesome colorscheme
 30
 31
 32 " UI Layout {{{
 33 set number              " show line numbers
 34 set showcmd             " show command in bottom bar
 35 set nocursorline          " highlight current line
 36 set wildmenu
 37 "set lazyredraw
 38 set showmatch           " higlight matching parenthesis
 39 " }}}
 40
 41 " Spaces & Tabs {{{
 42 set tabstop=4           " 4 space tab
 43 set expandtab           " use spaces for tabs
 44 set softtabstop=4       " 4 space tab
 45 set shiftwidth=4
 46 set modelines=1
 47 filetype indent on
 48 filetype plugin on
 49 set autoindent
 50 " }}}
 51
 52
 53 " Misc {{{
 54 set ttyfast                     " faster redraw
 55 set backspace=indent,eol,start
 56 " }}}
 57
 58
 59 " Folding {{{
 60 "=== folding ===
 61 set foldmethod=indent   " fold based on indent level
 62 set foldnestmax=10      " max 10 depth
 63 set foldenable          " don't fold files by default on open
 64 nnoremap <space> za
 65 set foldlevelstart=10    " start with fold level of 1
 66 " }}}
