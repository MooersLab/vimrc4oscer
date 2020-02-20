"vundle

if has('python3')
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


" =========[ Powerbar ]======================================================
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


Plugin 'MarcWeber/vim-addon-mw-utils'

" =========[ NERDtree ]======================================================
" "filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

"html
"  isnowfy only compatible with python not python3
" Plugin 'isnowfy/python-vim-instant-markdown'
" Plugin 'jtratner/vim-flavored-markdown'
" Plugin 'suan/vim-instant-markdown'
" Plugin 'nelstrom/vim-markdown-preview'



" =========[ Fortran ]=======================================================
Plugin 'rudrab/vimf90'
" Linter for fortran and other languages
Plugin 'dense-analysis/ale'

" =========[ Python syntax ]=================================================
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'


Plugin 'tmhedberg/SimpylFold'

"auto-completion stuff
" Plugin 'klen/python-mode'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'klen/rope-vim'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'ervandew/supertab'


" ==========[ LaTeX related plugins ]==========================================
" A Vim Plugin for Lively Previewing LaTeX PDF Output
" Plugin 'xuhdev/vim-latex-live-preview'
" vimtex for LaTeX and BibTex
Plugin 'lervag/vimtex'
" Plugin 'LaTeX-Suite-aka-Vim-LaTeX'

Plugin 'KeitaNakamura/tex-conceal.vim'



" ==========[ Markdown related plugins ]==========================================
" gfm: github flavored Markdown:'
Plugin 'rhysd/vim-gfm-syntax'

" markdown previewer
Plugin 'JamshedVesuna/vim-markdown-preview'

" ==========[ Snippets ]======================================================
" neosnippets uses deoplete to suggest snippets
" This might be superior to ultisnips
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'


" Ultisnips requires vim installed with python.
" This is just the engine.
" See vim-snippets for the snippets.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


" ==========[ Damian Conway's Plugins ]=======================================
Plugin 'galli-a/dragvisuals'
Plugin 'galli-a/listtrans'
Plugin 'galli-a/vmath'


" ==========[tpope's Plugins ]================================================
Plugin 'tpope/vim-surround'
"git interface
Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-commentary:'

Plugin 'reedes/vim-wordy'


" ==========[ Stan Plugins ]=======================================
Plugin 'eigenfoo/stan-vim'

Plugin 'bioSyntax/bioSyntax-vim'

call vundle#end()

" ===========[ General settings ]============================================

filetype plugin on " enables 
filetype plugin indent on    " enables filetype detection

let g:SimpylFold_docstring_preview = 1

"autocomplete
let g:ycm_autoclose_preview_window_after_completion=1

"custom keys
" let mapleader=" "
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
" call togglebg#map("<F5>")


"I don't like swap files
set noswapfile

"python with virtualenv support
" py << EOF
" import os.path
" import sys
" import vim
" if 'VIRTUA_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   sys.path.insert(0, project_base_dir)
"   activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist
"omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
" au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indentss
"au BufNewFile,BufRead *.py set tabstop=4 set softtabstop=4 set shiftwidth=4 set textwidth=79 set expandtab set autoindent set fileformat=unix


" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent
                                                             
" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za 
"----------Stop python PEP 8 stuff--------------


" Turn on filetype detection for plugins
filetype plugin on





" ==========[  Fortran Settings ]==============================================

let g:VimF90Leader = "`"

let g:VimF90Linter = 1





" ==========[ YCM ]==========================================================
" Inform vim of the location of pydiction
let g:pydiction_location = '/Users/blaine/.vim/bundle/Pydiction/complete-dict' 

" Control height of YCM window. 
let g:pydiction_menu_height = 5 

" Trigger configuration. 
" Turn off tab usage by YCM. It conflicts with UtliSnip.
" let g:ycm_key_list_select_completion=[]
" let g:ycm_key_list_previous_completion=[]


" ==========[ NerDTree settings ]===========================================
" Settings for nerdtree
map <C-E> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']


" ==========[ Python settings ]==============================================
" Disable virtualenv in Pymode
let g:pymode_virtualenv = 0

" Disable pymode init and lint because of #897
let g:pymode_init = 0
let g:python3_host_prog = expand('/opt/local/bin/python3.7')


" ==========[ UltiSnips related commands ]===================================
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=['/Users/blaine/.vim/my-snippets/Ultisnips','UltiSnips']


" ==========[ vimtex settings  ]==============================================
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0

" Set pdf previewer
let g:livepreview_previewer = 'gv'


" ==========[ Enforce true colors ]===========================================
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:solarized_termcolors=256
set background=light " set colorscheme
" colorscheme solarized8_high

" run ./solarized.sh from script file to set true colors


" ==========[ Enable syntax highlighting ]====================================
syntax enable

" enable all Python syntax highlighting features
let python_highlight_all=1
syntax on

" flag unnecessary whitespacei as per PEP8
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Need to be using utf-8 with Python3
set encoding=utf-8


" ==========[ Turn on line numbering ]=======================================
set nu " turn on line numbering

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" turn hybrid line numbers off
" :set nonumber norelativenumber
" :set nonu nornu

" toggle hybrid line numbers
" :set number! relativenumber!
" :set nu! rnu!


" ==========[ Set line width to 81 columns ]==================================
" OR ELSE just the 81st column of wide lines...
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)


" ==========[ Visualize the invisible characters ]============================
" Make tabs, trailing whitespace, and non-breaking spaces visible
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list


" ==========[ Formatting of the status line ]=================================
" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" Define "straight" tabs
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Define the path format
let g:airline#extensions#tabline#formatter = 'default'


" ===========[ Autocompletion ]==============================================
set omnifunc=syntaxcomplete#Complete


" ==========[ Spell checking ]================================================
setlocal spell
" turn on spell checking
set spelllang=en_us


" ==========[ Tab spacing ]==================================================
" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch


" ==========[ Folding ]=======================================================
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za


" ==========[ Commands to be run on startup ]=================================
" Enables use of :Man <whatever topic> 
:runtime! ftplugin/man.vim


" ==========[ The mappings section ]=========================================
" The leader is the backslash. Comma is easier to enter. This is a good of the
" wide line.
:let mapleader = ","


"==========[ Quicker access to Ex commands ]=================================
" swap : and ; to spare yourself the trouble of using shift to go the ex
" command line.
" This idea is from Damian Conway.
" Two nnoremap commands are required.
" nnoremap  ;  :
" nnoremap  :  ;
" I found these mappings in Conway's 2019 vimrc
nmap ; :
xmap ; :


"==========[ Enable Nmap command for documented mappings ]====================
" runtime plugin/documap.vim


"=========[ Toggle between lists and bulleted lists ]=========================
" The toggle keys for Damian Conways's listtrans plugin.
" Surprisingly, the recommended toggle uses :l which conflicts with the
" remapping of ; to ;.
nmap  lt   :call ListTrans_toggle_format()<CR>
xmap  lt   :call ListTrans_toggle_format('visual')<CR>

" I lifted these mappings from Conway's vimrc file.
" The Namp commend depends on the documap plugin. 
" Nmap     <silent> ;l [Toggle list format (bullets <-> commas)]  :call ListTrans_toggle_format()<CR>f
" xnoremap <silent> ;l                                            :call ListTrans_toggle_format('visual')<CR>f


"=========[ Convert list from plain list into item list ]======================
nmap cl    :%s/^/\\item /



"=========[ Toggling out of insert mode ]======================================
" i for insert from normal mode; ii for escape to normal mode
inoremap ii  <Esc>

" another means of escape to normal mode
inoremap <C-CR>  <Esc>


"=========[ Split windows ]===================================================
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"=========[ Drag visual blocks ]==============================================
" mappings for the dragvisuals plugin
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> D DVB_Duplicate()


"=========[ Vmath ]==========================================================
" Mappings from the vmath plugin by Damian Conway.
" Average, sum, min, max on a column of numbers.
" Type a column of numbers, then use the mappings.
" After the computation is finished, the stats are
" stored in buffers. the sum is available in the default yank buffer,
" and also in the "s buffer. The average is available in the "a buffer,
" the minimum in the "n buffer,
" the maximum in the "x buffer and
" the min-to-max range in the "r buffer.
vmap <expr>  ++  VMATH_YankAndAnalyse() 
nmap         ++  vip++


"=========[ Unwrap sentences to leave one sentence per line ]===================
" https://vi.stackexchange.com/questions/2846/how-to-set-up-vim-to-work-with-one-sentence-per-line
" function! MyFormatExpr(start, end)
"     silent execute a:start.','.a:end.'s/[.!?]\zs /\r/g'
" endfunction

" set formatexpr=MyFormatExpr(v:lnum,v:lnum+v:count-1)
