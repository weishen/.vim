set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'jiangmiao/auto-pairs'
" Plugin 'vim-airline/vim-airline'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'preservim/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax enable
syntax on
set pastetoggle=<f10>
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set incsearch
set wildmenu
set ignorecase
set smartcase
set autochdir
set cursorline
set cursorcolumn
set fileencodings=utf8,gbk,latin1
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
set nu
set showmode
set showcmd
set splitbelow
set splitright
set list
set wrapscan
set timeout
set timeoutlen=1000
set ttimeout          " for key codes
set ttimeoutlen=10    " unnoticeable small value

"set ttyfast
"set lazyredraw
set report=0
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set laststatus=2
set display=lastline
let mapleader = ','
map <f2> :NERDTreeToggle<CR>
map <LEADER>tm :TableModeToggle<CR>
let g:table_mode_corner='|'
