set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本

" youcompleteme stuff start
let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*'  
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1  
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" youcompleteme stuff end

" 不隐藏 json 的引号
let g:vim_json_syntax_conceal = 0

" set nocompatible
" insensitive case
set ic

set laststatus=2
set statusline=%F%*\ %y[%{&fenc}]\ %2*%r%m%*\ %l,%c\ %=%l/%L\ (%p%%)%*\%{strftime('%Y-%m-%d-%H:%M')}

execute pathogen#infect()
" let g:jsx_ext_required = 0

set t_Co=256
" colorscheme desert
set background=dark
" colorscheme monokai
colorscheme gruvbox

set backspace=indent,eol,start
set showmatch
syntax enable
set fdm=marker
set noet

set ts=4
set expandtab
set autoindent

map <F4> \be
" color evening
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1

set diffopt+=iwhite
set guifont=consolas:h14
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let favex_fe='<f3>'
let favex_win_height=8
let TE_Ctags_Path = '/usr/bin/ctags'

set nobackup       
set history=50      " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching

" Don't use Ex mode, use Q for formatting
set guioptions-=T
map Q gq

" 设置modeline查询文件首尾10行
set modelines=10

    syntax on

    set autoindent      " always set autoindenting on
set diffexpr=MyDiff()

function MyDiff()
    silent execute "!diff -abB ".v:fname_in." ".v:fname_new." > ".v:fname_out
endfunction
set number
set hlsearch
autocmd BufNewFile,Bufread *.ros,*.inc,*.php set keywordprg="help"
set runtimepath+=~/.vim/doc
