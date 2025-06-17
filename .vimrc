" baseq's vim

" VIM BASICS
"------------------------------------------------------------
let mapleader=" "                   " use space as leader
syntax on                           " syntax highlighting
set nocompatible                    " allow for portable testing of this file
set ai si                           " auto and smart indent
set number                          " line numbers
if has('mouse')
    set mouse=a                         " enable mouse
endif
set showcmd                         " show last command in bottom right
set expandtab                       " tab inserts spaces
set linebreak                       " wrap without breaking words
set showmatch                       " show matching brace
set ts=4 sw=4                       " tab and indent size
set cursorline                      " enable cursor line
set incsearch hlsearch              " incremental and highlight search
set splitbelow splitright           " logical split directions
set nomodeline                      " for security purposes
set ignorecase                      " case insensitve searching
set smartcase                       " case sensitive searching for capital letters only
set ruler                           " show cursor position
set confirm                         " display prompt to save changes when not specfied at exit
set visualbell                      " silence bell
set t_vb=                           " disable screen flash bell
set hidden                          " replace buffers without needing to save them by deferring until vim exits
set wildmenu                        " select menu in command mode
set backspace=indent,eol,start
set nostartofline                   " preserve column position when using motions
set laststatus=2                    " line height of status bar
set cmdheight=2                     " line height of command bar
set paste                           " paste as raw by default
set pastetoggle=<F11>               " toggle auto-indent when pasting
if has('filetype')
  filetype indent plugin on
endif
"------------------------------------------------------------

" REMAPS
"------------------------------------------------------------
nnoremap <C-C> :nohl<CR><C-L>       " clear search highlighting
map Y y$
nnoremap <C-H> <C-W>h               " move focus left split
nnoremap <C-J> <C-W>j               " move focus down split 
nnoremap <C-K> <C-W>k               " move focus up split 
nnoremap <C-L> <C-W>l               " move focus right split
nnoremap <leader>" :new<CR>         " create horizontal split
nnoremap <leader>% :vnew<CR>        " create vertical split

" undo
set undofile
set undodir=~/.vim/.undo/

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
"nmap <leader>n :NERDTreeFocus<CR>                   " cursor focus on nerd tree
"nmap <C-t> :NERDTreeToggle<CR>                      " toggle nerd tree
"autocmd vimenter * NERDTree | wincmd p
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd bufwinenter * silent NERDTreeMirror
"let NERDTreeShowLineNumbers=1


"------------------------------------------------------------
