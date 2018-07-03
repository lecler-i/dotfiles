""" ruby config
let ruby_operators = 1
set encoding=utf8

""" editorconfig
" let g:EditorConfig_core_mode = 'external_command'


""" ctrlp config
let g:ctrlp_map = '<leader>t'
" Use <leader>f to open MRU files
nmap <leader>f :CtrlPMRUFiles<cr>
nmap <leader>r :CtrlPBuffer<cr>


" Ignores should be handled by .agignore
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""' " Use silver searcher
let g:ctrlp_working_path_mode = 0

""" Indent guides
let g:indentLine_char = '┆'


""" neomake configuration
" Use <leader>e to go to the next error
"nnoremap <leader>e :call LocationNext()<cr>
" if (has("termguicolors"))
 " set termguicolors
" endif
"
""" deoplete configuration
let g:deoplete#enable_at_startup = 1
" let g:deoplete#complete_method = "complete"
" let g:deoplete#auto_complete_delay = 0

" Improve ultisnips and deoplete integration
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#jedi#show_docstring = 1

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" if !exists('g:deoplete#omni_patterns')
    " let g:deoplete#omni#input_patterns = {}
  " endif
" let g:deoplete#omni#input_patterns.ocaml = '[^. *\t]\.\w*|\s\w*|#'


""" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1


""" NERDTree
let NERDTreeIgnore = ['node_modules', 'tmp', 'bower_components']
" Don't want to see the extra text
let NERDTreeMinimalUI = 1
" Close NERDTree after reading file
" autocmd BufReadPre,FileReadPre * :NERDTreeClose
map <silent> <leader>n :NERDTreeFocus<CR>

" NERDTree : Toggle and focus if directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene  | wincmd p | endif

" NERDTree : close tree if only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
"
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

""" Custom Javascript configuration
let g:javascript_plugin_jsdoc = 1    " Highlight JSDoc

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'elixir': ['credo'],
\   'rust': ['cargo', 'rls'],
\   'cpp': ['clang', 'gcc'],
\}

let g:ale_fixers = {
\   'python': ['autopep8'],
\   'javascript': ['prettier_eslint', 'eslint'],
\   'reason': ['refmt'],
\   'elixir': ['format'],
\   'rust': ['rustfmt'],
\}
let g:ale_fix_on_save = 1

let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/opt/rust/src/'

let g:opamshare = '~/.config/yarn/global/node_modules/reason-cli/3_____________________________/i/esy_ocaml__slash__merlin-3.0.5-bfbe951d/share'
execute "set rtp+=" . g:opamshare . "/merlin/vim"

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>q :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


let g:vim_markdown_conceal = 0
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" filetype plugin on
" syntax on


