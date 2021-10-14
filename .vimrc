" baseq's vim

" VIM BASICS
"------------------------------------------------------------
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
let mapleader=" "                   " use space as leader
set clipboard^=unamedplus,unamed    " use system clipboard
set nomodeline                      " for security purposes
set ignorecase                      " case insensitve searching
set smartcase                       " case sensitive searching for capital letters only
set ruler                           " show cursor position
set confirm                         " display prompt to save changes when not specfied at exit

" VIM RECOMMENDED
set visualbell  
set t_vb=                    
set hidden
set wildmenu
set backspace=indent,eol,start
set nostartofline
set laststatus=2
set cmdheight=2                     
set pastetoggle=<F11>
if has('filetype')
  filetype indent plugin on
endif
"------------------------------------------------------------

" REMAPS
"------------------------------------------------------------
nnoremap <C-E> :nohl<CR><C-L>       " clear search highlighting
map Y y$
nnoremap <C-H> <C-W>h               " move focus left split
nnoremap <C-J> <C-W>j               " move focus down split 
nnoremap <C-K> <C-W>k               " move focus up split 
nnoremap <C-L> <C-W>l               " move focus right split
nnoremap <leader>h :new<CR>         " new creates a horizontal split
nnoremap <leader>v :vnew<CR>        " vnew creates a vertical split

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
nnoremap <F12> :call NumberToggle()<CR>       " F12 toggles between relative and absolute line numbers
"------------------------------------------------------------

" INSTALL MISSING PLUGINS
"------------------------------------------------------------
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME}/.vim/pack/vendor/start/nerdtree/LICENCE"'))
        echo "Installing plugins...\n"
        silent !git clone https://github.com/preservim/nerdtree.git ${XDG_CONFIG_HOME:-$HOME}/.vim/pack/vendor/start/nerdtree
        silent !vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c -q
endif

" PLUGINS CONFIGS
"------------------------------------------------------------
" nerdtree
nmap <leader>n :NERDTreeFocus<CR>                   " cursor focus on nerd tree
nmap <C-t> :NERDTreeToggle<CR>                      " toggle nerd tree
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufwinenter * silent NERDTreeMirror
let NERDTreeShowLineNumbers=1


"------------------------------------------------------------
