"" Information copied from                                      
" https://github.com/mcantor/no_plugins/blob/master/no_plugins.v


call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
call plug#end()
 
" Some basics
filetype plugin on 
syntax on
set encoding=utf-8
set number relativenumber


 
" Spell-checking 

"Display all comments in color instead dark-blue                
:color desert                                                   
                                                                
" Line wrap.                                                    
set wrap                                                        
                                                                
" searched as characters are entered                            
set incsearch                                                   
                                                                
" Search down into sub folders                                  
" Provides tab-completion  for all file-related tasks           
set path+=**                                                    
                                                                
"Display all matching files when we tab complete                
set wildmenu                                                    
                                                                
" :b lets you autocomplete any open buffer  
set wildmode=longest.list.full

                                                                
" find all files within PATH                                    
                                                                
" enter the current millenium                                   
set nocompatible                                                
                                                                
                                                                
" TAG JUMPING:                                                  
"                                                               
" " Create the `tags` file (may need to install ctags first)    
" command! MakeTags !ctags -R .                                 
"                                                               
" " NOW WE CAN:                                                 
" " - Use ^] to jump to tag under cursor                        
" " - Use g^] for ambiguous tags                                
" " - Use ^t to jump back up the tag stack                      
                                                                
" AUTOCOMPLETE:                                                 
"                                                               
" " The good stuff is documented in |ins-completion|            
"                                                               
" " HIGHLIGHTS:                                                 
" " - ^x^n for JUST this file                                   
" " - ^x^f for filenames (works with our path trick!)           
" " - ^x^] for tags only                                        
" " - ^n for anything specified by the 'complete' option        
"                                                               
" " NOW WE CAN:                                                 
" " - Use ^n and ^p to go back and forth in the suggestion list 

au VimEnter no_plugins.vim command! GO normal M17jzzH                                               
au VimEnter no_plugins.vim command! BACK normal M17kzzH                                             
                                                                                                    
" highlight matched                                                                                 
set hlsearch                                                                                        
                                                                                                    
" enable syntax processing                                                                          
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
"set number              " show line numbers                                                        
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
                                                                                                       
                                                                                                       
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                                        
" => Moving around, tabs, windows and buffers                                                          
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                                        
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)                                   
map <space> /                                                                                          
map <c-space> ?                                                                                        

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => while Openeing a file press , then it will take you end of file
" with insert mode 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map , GA<enter>
                                                            
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" set runtimepath=~/.vim/ctrlp.vim

"Pathogen Setting 

execute pathogen#infect()
syntax on
filetype plugin indent on

" Syntastic  Setting 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"set laststatus=2 "load up as soon as you start editing a file
"set noshowmode   "line to hide the default mode (INSERT, NORMAL, etc)
"set t_Co=256   "line to get colors working correctl


