" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing

" Plug 'vim-scripts/auto-pairs-gentle'    " Add brackets automatically
Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'ctrlpvim/ctrlp.vim'               " ctrlp fuzzy finder
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'tpope/vim-surround'               " Change your surroundings
" Plug 'terryma/vim-multiple-cursors'     " Multiple cursors
" Plug 'Yggdroot/indentLine'              " Indent guides
Plug 'easymotion/vim-easymotion'        " Navigate files with ease
Plug 'scrooloose/nerdtree'              " File tree view
Plug 'ryanoasis/vim-devicons'
" Plug 'altercation/vim-colors-solarized'

Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'

" Ocaml / Reason
Plug 'reasonml-editor/vim-reason-plus'
Plug 'copy/deoplete-ocaml'

" python
Plug 'zchee/deoplete-jedi'

" C/C++
Plug 'rip-rip/clang_complete'

" Java
Plug 'artur-shaik/vim-javacomplete2'

" Elixir
Plug 'slashmili/alchemist.vim'

" Javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/yajs.vim'

" Rust
Plug 'sebastianmarkow/deoplete-rust'

Plug 'ervandew/supertab'
Plug 'shougo/echodoc.vim'

Plug 'scrooloose/nerdcommenter'         " For commenting keybinding

Plug 'bling/vim-airline'                " Airline bar
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

Plug 'SirVer/ultisnips'                 " Snippets engine
Plug 'honza/vim-snippets'               " Snippets

Plug 'suan/vim-instant-markdown', {'do': 'npm install -g instant-markdown-d'}
Plug 'DanManN/vim-razer'
" Plug 'alvan/vim-closetag'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'dracula/vim'
" Plug 'mhartington/oceanic-next'
Plug  'wakatime/vim-wakatime'

" Plug 'jelera/vim-javascript-syntax'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'mxw/vim-jsx'

Plug 'vim-scripts/SyntaxComplete'
" Plug 'othree/es.next.syntax.vim'

call plug#end()
