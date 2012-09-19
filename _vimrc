set term=builtin_ansi
syntax on
filetype on
filetype plugin on
filetype indent on
colorscheme railscasts

set foldmethod=indent
set foldlevel=99

set autoindent
set smarttab
set textwidth=79
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set mouse=nv
set ignorecase
set foldenable
set showmatch
set bs=2
set autoread
set incsearch
set splitright
set splitbelow
set ignorecase
set title

"set foldmethod=indent
"#nnoremap <space> za
"#vnoremap <space> zf

" Python: 4 spaces



let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

let g:pylint_onwrite=0

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
set number
map T :TaskList<CR>
map P :TlistToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python compiler pylint

"""""""" mappings and commands

map <F5> :set hls!<bar>set hls?<CR>

" Stupid shift
:command! W w
:command! Wq wq
:command! Q q
:command! Wqa wqa
