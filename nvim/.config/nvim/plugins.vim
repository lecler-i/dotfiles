" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing

Plug 'dracula/vim'
Plug 'trevordmiller/nova-vim'

Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'vim-scripts/SyntaxComplete'
Plug 'airblade/vim-gitgutter'

Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'        " Navigate files with ease

Plug 'scrooloose/nerdtree'              " File tree view
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'         " For commenting keybinding

Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
\ }
Plug 'SirVer/ultisnips'                 " Snippets engine
Plug 'honza/vim-snippets'               " Snippets

" Ocaml / Reason
Plug 'reasonml-editor/vim-reason-plus'
" Plug 'copy/deoplete-ocaml'

" python
" Plug 'zchee/deoplete-jedi'

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

Plug 'shougo/echodoc.vim'

Plug 'bling/vim-airline'                " Airline bar
Plug 'vim-airline/vim-airline-themes'

Plug 'suan/vim-instant-markdown', {'do': 'npm install -g instant-markdown-d'}

Plug 'DanManN/vim-razer'
Plug 'wakatime/vim-wakatime'

call plug#end()
