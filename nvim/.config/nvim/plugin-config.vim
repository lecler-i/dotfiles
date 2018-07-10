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
let g:deoplete#complete_method = "complete"
let g:deoplete#auto_complete_delay = 0

" Improve ultisnips and deoplete integration
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#case_insensitive = 1

let g:deoplete#sources#jedi#show_docstring = 1

let g:deoplete#sources#rust#racer_binary='/usr/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/opt/rust/src/'

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" ocaml
let g:opamshare = '~/.config/yarn/global/node_modules/reason-cli/3_____________________________/i/esy_ocaml__slash__merlin-3.0.5-bfbe951d/share'
execute "set rtp+=" . g:opamshare . "/merlin/vim"


""" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1


""" NERDTree
let NERDTreeIgnore = ['node_modules', 'tmp', 'bower_components']
let NERDTreeMinimalUI = 1
map <silent> <leader>n :NERDTreeFind<CR>

" NERDTree : Toggle and focus if directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene  | wincmd p | endif

" NERDTree : close tree if only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

""" Custom Javascript configuration
let g:javascript_plugin_jsdoc = 1    " Highlight JSDoc

" ale
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

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

" fzf
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>r :Buffers<CR>
nnoremap <silent> <leader>q :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>' :Lines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>f :History<CR>

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
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" easymotion
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
