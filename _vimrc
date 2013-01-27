set t_Co=256
set foldmethod=indent
set foldlevel=99

" =================================
" Pathogen
" =================================
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" =================================
" Basic Settings
" =================================
set term=builtin_ansi
syntax on
set background=dark
colorscheme tomorrow 
filetype plugin indent on
set number
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
set title   " Show title in console title bar
set wildmenu " Menu completion in command mode on <Tab>
set wildmode=full       " <Tab> cycles between all matching choices

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

let mapleader=","


" Python: 4 spaces


let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

let g:pylint_onwrite=0

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map T :TaskList<CR>
map P :TlistToggle<CR>

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
"""""""" mappings and commands
map <leader>n :NERDTreeToggle<CR>
map <F5> :set hls!<bar>set hls?<CR>

let g:pyflakes_use_quickfix = 0

" 
:command! W w
:command! Wq wq
:command! Q q
:command! Wqa wqa

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
