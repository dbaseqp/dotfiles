" baseq's vim

" VIM BASICS
"------------------------------------------------------------
" use space as leader
let mapleader=" "
" syntax highlighting
syntax on
" allow for portable testing of this file
set nocompatible
" auto and smart indent
set ai si
" line numbers
set number
if has('mouse')
    " enable mouse
    set mouse=a
endif
" show last command in bottom right
set showcmd
" tab inserts spaces
set expandtab
" wrap without breaking words
set linebreak
" show matching brace
set showmatch
" tab and indent size
set tabstop=4 shiftwidth=4
" enable cursor line
set cursorline
" incremental and highlight search
set incsearch hlsearch
" logical split directions
set splitbelow splitright
" for security purposes
set nomodeline
" case insensitve searching
set ignorecase
" case sensitive searching for capital letters only
set smartcase
" show cursor position
set ruler
" display prompt to save changes when not specfied at exit
set confirm
" silence bell
set visualbell
" disable screen flash bell
set t_vb=
" replace buffers without needing to save them by deferring until vim exits
set hidden
" select menu in command mode
set wildmenu
set backspace=indent,eol,start
" preserve column position when using motions
set nostartofline
" line height of status bar
set laststatus=2
" status line format
set statusline=%F\ %y\ %m\ %r\ %h\ %w\ %{&filetype}\ [%l/%L]\ [%p%%]
" line height of command bar
set cmdheight=2
" paste as raw by default
set paste
" toggle auto-indent when pasting
set pastetoggle=<F11>
if has('filetype')
    filetype indent plugin on
endif
"------------------------------------------------------------

" REMAPS
"------------------------------------------------------------
" clear search highlighting
nnoremap <C-C> :nohl<CR><C-L>
map Y y$
" move focus left split
nnoremap <C-H> <C-W>h
" move focus down split 
nnoremap <C-J> <C-W>j
" move focus up split 
nnoremap <C-K> <C-W>k
" move focus right split
nnoremap <C-L> <C-W>l
" create horizontal split
nnoremap <leader>" :new<CR>
" create vertical split
nnoremap <leader>% :vnew<CR>

" undo
set undofile
let s:undodir = expand('~/.vim/undo')

if !isdirectory(s:undodir)
    call mkdir(s:undodir, 'p')
endif

let &undodir = s:undodir

" Toggle between relative and absolute line numbers
function! NumberToggle()
    if(&rnu == 0)
        set rnu
    else
        set nornu
    endif
endfunction
nnoremap <leader>rnu :call NumberToggle()<CR>
"------------------------------------------------------------

" INSTALL MISSING PLUGINS
"------------------------------------------------------------
"if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME}/.vim/pack/vendor/start/nerdtree/LICENCE"'))
"        echo "Installing plugins...\n"
"        silent !git clone https://github.com/preservim/nerdtree.git ${XDG_CONFIG_HOME:-$HOME}/.vim/pack/vendor/start/nerdtree
"        silent !vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c -q
"endif

" PLUGINS CONFIGS
"------------------------------------------------------------
" nerdtree
" cursor focus on nerd tree
"nmap <leader>n :NERDTreeFocus<CR>
" toggle nerd tree
"nmap <C-t> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree | wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd bufwinenter * silent NERDTreeMirror
"let NERDTreeShowLineNumbers=1


"------------------------------------------------------------
