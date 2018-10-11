" Install VimPlug if not present
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let mapleader="\<Space>" " Change <leader> to ,

source $XDG_CONFIG_HOME/nvim/plugins.vim

"Use 24-bit (true-color) mode in Vim/Neovim
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" Colorscheme
syntax enable
set t_Co=256
color dracula
" colorscheme nova

if &term =~ '256color'
    set t_ut=
endif

set encoding=utf8
set mouse=a
set cursorline                  " Highlight the current line
set lazyredraw                  " Faster scrolling
set number                      " Show line number
set relativenumber              " Show relative line number
" set showcmd                     " Show current command
" set showmode                    " Show current mode
" set wildmode=longest:list,full  " Autocomplete
" set wildignore=*.o,*.obj,*~     " Ignore file
set showmatch                   " highlight matching braces
set hlsearch                    " Highlight search
set ignorecase                  " ignore case while searching
set smartcase                   " unless uppercase explicitly mentioned
" set smartindent                 " indent smartly
" set nowrap                      " Don't wrap text
" set laststatus=2                " Always show statusbar
set scrolloff=999                 " Minimum space on bottom/top of window
set sidescrolloff=7             " Minimum space on side
" set sidescroll=1
set list                        " Display hidden chars as defined below
set listchars=tab:▷⋅,trail:⋅,nbsp:+,extends:»,precedes:«
set splitright                  " Open vsp on right
" set pastetoggle=<F2>
" set noshowmode                  " Hide mode (lightline shows mode)
set expandtab                   " Spaces > tabs
set tabstop=2                   " 2 spaces
" set shiftwidth=2                " 2 2 CHAINZ
" set nofoldenable                " Disable folding
set clipboard+=unnamedplus      " Use system clipboard
set virtualedit=onemore
set ff=unix
set colorcolumn=81              " set different color for 81 col
" set regexpengine=1              " set old regexp engine for better ruby syntax perfs

" Undo settings
set undodir=$HOME/.cache/nvim/undo
set undofile
set undolevels=1000  "max number of changes that can be undone
set undoreload=10000 "max number lines to save for undo on buffer reload
set hidden

let g:indentLine_char = '┆'

" Filetype specific settings
autocmd! filetype *commit*,markdown setlocal spell         " Spell Check
autocmd! filetype *commit*,markdown setlocal textwidth=72  " Looks good
autocmd! filetype make setlocal noexpandtab                " In Makefiles DO NOT use spaces instead of tabs

" autocmd BufWritePre * call TrimWhitespace() " Remove trailing whitespace when saving
" autocmd! BufReadPost * call SetCursorPosition()

" function! TrimWhitespace()
  " let l:save = winsaveview()
  " %s/\s\+$//e
  " call winrestview(l:save)
" endfunction

" Function to set cursor postion
" function! SetCursorPosition()
  " dont do it when writing a commit log entry
  " if &filetype !~ 'svn\|commit\c' if line("'\"") > 0 && line("'\"") <= line("$")
      " exe "normal! g`\""
      " normal! zz
    " endif
  " else
    " call cursor(1,1)
  " endif
" endfunction

" Move lines up(-) or down(_)
noremap - ddp
noremap _ ddkP

" Write file as sudo
cnoremap w!! w !sudo tee > /dev/null %

" Use Ctrl+H,J,K,L to navigate panes
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

imap jj <Esc>

" Dont loose selection when using ><
xnoremap <  <gv
xnoremap >  >gv

source $HOME/.config/nvim/plugin-config.vim

