""" ruby config
" let ruby_operators = 1

""" Indent guides

""" deoplete configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = "complete"
let g:deoplete#auto_complete_delay = 0

" Improve ultisnips and deoplete integration
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])

let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']

" ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
"
let g:LanguageClient_serverCommands = {
  \ 'reason': ['reason-language-server'],
  \ 'ocaml': ['ocaml-language-server'],
  \ 'sh': ['bash-language-server', 'start'],
  \ 'python': ['pyls'],
\ }

" {
        " 1: {
            " "name": "Error",
            " "texthl": "ALEError",
            " "signText": ">> ✖",
            " "signTexthl": "ALEErrorSign",
        " },
        " 2: {
            " "name": "Warning",
            " "texthl": "ALEWarning",
            " "signText": "-- ⚠",
            " "signTexthl": "ALEWarningSign",
        " },
        " 3: {
            " "name": "Information",
            " "texthl": "ALEInfo",
            " "signText": "ℹ",
            " "signTexthl": "ALEInfoSign",
        " },
        " 4: {
            " "name": "Hint",
            " "texthl": "ALEInfo",
            " "signText": "➤",
            " "signTexthl": "ALEInfoSign",
        " },
    " }
" """ NERDCommenter
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

" ale disable linter
let g:ale_linters = {}

let g:ale_fixers = {
\   'python': ['autopep8'],
\   'javascript': ['prettier_eslint', 'eslint'],
\   'elixir': ['format'],
\   'reason': ['refmt'],
\   'rust': ['rustfmt'],
\}
let g:ale_fix_on_save = 1

nmap <silent> <leader>- <Plug>(ale_next_wrap)

" fzf
imap <c-x><c-f> <plug>(fzf-complete-path)

nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>r :Buffers<CR>
nnoremap <silent> <leader>q :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>' :Ag<CR>
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

let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" easymotion
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" airline
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

" airline sections
if !exists("$TMUX")
  let g:airline_section_b = airline#section#create(['branch'])
else
  let g:airline_section_b = airline#section#create("")
endif

let g:airline_section_z = '%3v:%3l/%L'

