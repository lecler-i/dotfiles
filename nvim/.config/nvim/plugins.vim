if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'tpope/vim-sensible'               " Some sensible settings
Plug 'tpope/vim-sleuth'                 " Autodetect file spacing
Plug 'moll/vim-bbye'

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-scripts/autoswap.vim'         " Handle swap files intelligently
Plug 'sheerun/vim-polyglot'             " Mega language support pack

Plug 'editorconfig/editorconfig-vim'    " .editorconfig support
Plug 'airblade/vim-gitgutter'

Plug 'easymotion/vim-easymotion'        " Navigate files with ease

Plug 'scrooloose/nerdtree'              " File tree view
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdcommenter'         " For commenting keybinding


Plug '/usr/share/vim/vimfiles/plugin/fzf.vim'
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'w0rp/ale'
"
" Ocaml / Reason
Plug 'reasonml-editor/vim-reason-plus'

Plug 'shougo/echodoc.vim'

Plug 'bling/vim-airline'                " Airline bar
Plug 'vim-airline/vim-airline-themes'

Plug 'DanManN/vim-razer'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

Plug 'rhysd/vim-grammarous'

Plug 'cstrahan/vim-capnp'

call plug#end()
