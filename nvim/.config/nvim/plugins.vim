" List all plugins here.
"
" Configurations for plugins should be defined in plugin-config.vim
call plug#begin()

Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing

Plug 'vim-scripts/auto-pairs-gentle'    " Add brackets automatically
Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack
Plug 'tpope/vim-fugitive'               " Git wrapper
Plug 'ctrlpvim/ctrlp.vim'               " ctrlp fuzzy finder
Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Keyword completion
Plug 'tpope/vim-surround'               " Change your surroundings
Plug 'terryma/vim-multiple-cursors'     " Multiple cursors
Plug 'Yggdroot/indentLine'              " Indent guides
Plug 'easymotion/vim-easymotion'        " Navigate files with ease
Plug 'scrooloose/nerdtree'              " File tree view
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'


Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'rip-rip/clang_complete'
Plug 'artur-shaik/vim-javacomplete2'

Plug 'w0rp/ale'

Plug 'ervandew/supertab'
Plug 'shougo/echodoc.vim'

Plug 'scrooloose/nerdcommenter'         " For commenting keybinding

Plug 'bling/vim-airline'                " Airline bar
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

Plug 'SirVer/ultisnips'                 " Snippets engine
Plug 'honza/vim-snippets'               " Snippets

Plug 'suan/vim-instant-markdown', {'do': 'npm install -g instant-markdown-d'}
" Plug 'kannokanno/previm'
Plug 'https://github.com/DanManN/vim-razer'
Plug 'alvan/vim-closetag'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'dracula/vim'

Plug  'wakatime/vim-wakatime'


call plug#end()
