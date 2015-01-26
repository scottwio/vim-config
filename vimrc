set nocompatible "ensures vim over vi

" For MacVim
if has('gui_running')
  syntax enable
  set background=dark
  colorscheme solarized
endif


set splitright "opens new split on the right
set splitbelow "open new vsplit on the bottom

" Remove trailling whitespace on :w
autocmd BufWritePre * :%s/\s\+$//e

highlight Cursor guibg=Green guifg=NONE
set clipboard=unnamed
set timeoutlen=1500 ttimeoutlen=0

"""""""""""""""""""
" PLUGINS
"""""""""""""""""""

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Deps
Plugin 'gmarik/vundle'			 						" Plugin installer
Plugin 'scrooloose/nerdtree' 						" Sidebar
Plugin 'jistr/vim-nerdtree-tabs'				" Sidebar same in all tabs
Plugin 'mileszs/ack.vim' 								" Fast search
Plugin 'mattn/emmet-vim'								" Emmit for vim
Plugin 'Raimondi/delimitMate'           " Auto close tags
Plugin 'scrooloose/nerdcommenter'				" Commenting
Plugin 'caike/snipmate.vim'							" Snipper Manager
Plugin 'tpope/vim-surround'							" Sounds the current word with something
Plugin 'bling/vim-airline'							" Fancy GUI Stuff
Plugin 'flazz/vim-colorschemes'					" Load of colorthemes

" Ruby
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" javascript
Plugin 'elzr/vim-json'
Plugin 'briancollins/vim-jst'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'pangloss/vim-javascript'

"CSS
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'

" PHP
Plugin 'spf13/PIV'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'beyondwords/vim-twig'

call vundle#end()            " required

"""""""""""""""""""
" CUSTOM SETTINGS
"""""""""""""""""""
set incsearch 													" Incremental search
filetype plugin indent on    						" Automatically detect file types.
set spell                          		  " Spell checking on
set hidden                         		  " Allow buffer switching without saving
set backspace=indent,eol,start      		" Idiot backspace
set virtualedit=onemore             		" Allow for cursor beyond last character
set history=1000                    		" Store a ton of history (default is 20)
set number															" Show line number
set ruler 															" Add line/column count to the bottom of screen
syntax enable														" Enable syntax highlight
set noerrorbells visualbell t_vb= 			" Turn off annoying bells
set tags=.tags 													" Destination file for ctags
set softtabstop=2 											" Number of space chars a tab counts for
set shiftwidth=2 												" Number of space chars for indentation
set expandtab 													" Insert space characters whenever the tab key is pressed
set tabstop=2 													" Space chars inserted when tab key is pressed
set autoindent													" Automatically indent
set showmode                    				" Display the current mode
set cursorline													" highlight current line

"""""""""""""""""""
" KEYBOARD MAPPING
"""""""""""""""""""
noremap <Up> <NOP> 											" remove arrows
noremap <Down> <NOP> 										" remove arrows
noremap <Left> <NOP> 										" remove arrows
noremap <Right> <NOP> 									" remove arrows
:nnoremap <C-Left> :tabprevious<CR>			" prev tab remap
:nnoremap <C-Right> :tabnext<CR>				" next tab remap
:nnoremap <C-t> :tabnew<CR>							" new tab remap
map <C-e> <plug>NERDTreeTabsToggle<CR>  " Nerdtree to ctrl-e

"""""""""""""""""""
" GUI STUFF
"""""""""""""""""""
let g:airline_powerline_fonts = 1 			" Use powerlinefonts
let g:airline_theme = 'wombat'				" Set airline theme
let g:airline_left_sep=''  						" Slightly fancier than '>'
let g:airline_right_sep='' 						" Slightly fancier than '<'
let g:Powerline_symbols = 'fancy'
set laststatus=2 												" force powerline

highlight clear SignColumn  				    " SignColumn should match background
highlight clear LineNr          				" Current line number row will have same background color in relative

let g:hybrid_use_Xresources = 1
colorscheme hybrid             					" Load a colorscheme
