  set wrap
  " searched as characters are entered
  set incsearch
  " highlight matched
  set hlsearch
 
  :set autoindent  -- in vim editor 
  
  9 " enable syntax processing
  syntax enable
 
  "Always show current position
  set ruler
 
  "Height of the commad bar
  set cmdheight=2
 
  "when searching try to be smart about cases
  set smartcase
  " show matching brackets when text  indicator is over time
  " Enable 256 colors palette in Gnome Terminal
  if $COLORTERM == 'gnome-terminal'
      set t_Co=256
  endif
 
 
  "awesome colorscheme
 
 
  " UI Layout {{{
  set number              " show line numbers
  set showcmd             " show command in bottom bar
  set nocursorline          " highlight current line
  set wildmenu
  "set lazyredraw
  set showmatch           " higlight matching parenthesis
  " }}}
 
  " Spaces & Tabs {{{
  set tabstop=4           " 4 space tab
  set expandtab           " use spaces for tabs
  set softtabstop=4       " 4 space tab
  set shiftwidth=4
  set modelines=1
  filetype indent on
  filetype plugin on
  set autoindent
  " }}}
 
 
  " Misc {{{
  set ttyfast                     " faster redraw
  set backspace=indent,eol,start
  " }}}
 
 
  " Folding {{{
  "=== folding ===
  set foldmethod=indent   " fold based on indent level
  set foldnestmax=10      " max 10 depth
  set foldenable          " don't fold files by default on open
  nnoremap <space> za
  set foldlevelstart=10    " start with fold level of 1
  " }}}
