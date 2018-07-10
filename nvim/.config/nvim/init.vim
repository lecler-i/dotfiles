if !has('nvim')
  set nocompatible
endif

" Install VimPlug if not present
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

let mapleader="\<Space>" " Change <leader> to ,

source $HOME/.config/nvim/plugins.vim

"Use 24-bit (true-color) mode in Vim/Neovim
" if (has("nvim"))
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
if (has("termguicolors"))
  set termguicolors
endif


" Colorscheme
syntax enable
color dracula
set t_Co=256

if &term =~ '256color'
    set t_ut=
endif

set mouse=a
set cursorline                  " Highlight the current line
set lazyredraw                  " Faster scrolling
set number                      " Show line number
set relativenumber              " Show relative line number
set showcmd                     " Show current command
set showmode                    " Show current mode
set wildmode=longest:list,full  " Autocomplete
set wildignore=*.o,*.obj,*~     " Ignore file
set showmatch                   " highlight matching braces
set hlsearch                    " Highlight search
set ignorecase                  " ignore case while searching
set smartcase                   " unless uppercase explicitly mentioned
set smartindent                 " indent smartly
set nowrap                      " Don't wrap text
set laststatus=2                " Always show statusbar
set scrolloff=999                 " Minimum space on bottom/top of window
set sidescrolloff=7             " Minimum space on side
set sidescroll=1
set list                        " Display hidden chars as defined below
set listchars=tab:▷⋅,trail:⋅,nbsp:+,extends:»,precedes:«
set splitright                  " Open vsp on right
set pastetoggle=<F2>
set noshowmode                  " Hide mode (lightline shows mode)
set expandtab                   " Spaces > tabs
set tabstop=2                   " 2 spaces
set shiftwidth=2                " 2 2 CHAINZ
set nofoldenable                " Disable folding
set clipboard+=unnamedplus      " Use system clipboard
set virtualedit=onemore
""" Undo settings
set undodir=$XDG_CONFIG_HOME/nvim/undo
set undofile
set undolevels=1000  "max number of changes that can be undone
set undoreload=10000 "max number lines to save for undo on buffer reload
set hidden
" Use old regexp engine
" This speeds up Ruby syntax highlighting
set regexpengine=1

" Filetype specific settings
autocmd! filetype *commit*,markdown setlocal spell         " Spell Check
autocmd! filetype *commit*,markdown setlocal textwidth=72  " Looks good
autocmd! filetype make setlocal noexpandtab                " In Makefiles DO NOT use spaces instead of tabs

autocmd BufWritePre * call TrimWhitespace() " Remove trailing whitespace when saving
" autocmd! BufReadPost * call SetCursorPosition()

set ff=unix

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

" Trims trailing whitespace
function! TrimWhitespace()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfunction

" Function to set cursor postion
function! SetCursorPosition()
  " dont do it when writing a commit log entry
  if &filetype !~ 'svn\|commit\c' if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal! g`\""
      normal! zz
    endif
  else
    call cursor(1,1)
  endif
endfunction

" Dont loose selection when using ><
xnoremap <  <gv
xnoremap >  >gv

set colorcolumn=81

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'VL',
    \ '' : 'V',
    \ 's'  : 'S',
    \ }
let g:airline#extensions#wordcount#format = '%d wrds'

if !exists("$TMUX")
  let g:airline_section_b = airline#section#create(['branch'])
else
  let g:airline_section_b = airline#section#create("")
endif


let g:airline_section_z = '%3v:%3l/%L'
source $XDG_CONFIG_HOME/nvim/plugin-config.vim

" let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
" execute "set rtp+=" . g:opamshare . "/merlin/vim"

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
" let s:opam_share_dir = system("opam config var share")
" let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

" let s:opam_configuration = {}
"
" function! OpamConfOcpIndent()
  " execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
" endfunction
" let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')
"
" function! OpamConfOcpIndex()
  " execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
" endfunction
" let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')
"
" function! OpamConfMerlin()
  " let l:dir = s:opam_share_dir . "/merlin/vim"
  " execute "set rtp+=" . l:dir
" endfunction
" let s:opam_configuration['merlin'] = function('OpamConfMerlin')
"
" let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
" let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
" let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
" for tool in s:opam_packages
  " " Respect package order (merlin should be after ocp-index)
  " if count(s:opam_available_tools, tool) > 0
    " call s:opam_configuration[tool]()
  " endif
" endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line

