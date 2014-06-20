set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
" =======vim 加强================
"file tree expoler
Bundle 'scrooloose/nerdtree'
"making nerdtree feel like a true panel
Bundle 'jistr/vim-nerdtree-tabs'
"source code browser
Bundle 'vim-scripts/taglist.vim'
"git wrapper tool
Bundle 'tpope/vim-fugitive'
"quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'
"simple templates plugin for vim
Bundle 'aperezdc/vim-template'
"vim motions on speed
Bundle 'Lokaltog/vim-easymotion'
"allow you create better-looking,more functional vim statusline
Bundle 'Lokaltog/vim-powerline'
let g:Powline_symbols='fancy'
"Bundle 'https://github.com/vim-scripts/cscope.vim'
"vim colorschemes
Bundle 'flazz/vim-colorschemes'

" :Tlist              调用TagList
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠

" :LoadTemplate       根据文件后缀自动加载模板
let g:template_path='/home/ruchee/.vim/template/'
" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='Ruchee'
let g:vimrc_email='my@ruchee.com'
let g:vimrc_homepage='http://www.ruchee.com'


"======python 插件==============
Bundle 'pythoncomplete'
Bundle 'python_fold'
Bundle 'python.vim'
"python 语法检查
Bundle 'scrooloose/syntastic.git'
let g:syntastic_python_checkers=['flake8', ]

"======scala 插件===============
Bundle 'derekwyatt/vim-scala'

"======pig 插件===============
Bundle 'motus/pig.vim'

"======R 插件===============
Bundle 'vim-scripts/Vim-R-plugin'
" Lines added by the Vim-R-plugin command :RpluginConfig (2014- 5月-22 14:28):
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-,> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif
" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

"======javascript 插件===============
Bundle "pangloss/vim-javascript"

"======html css 插件===============
Bundle "mattn/emmet-vim"
"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


"======markdown  插件===============
Bundle "plasticboy/vim-markdown"
let g:vim_markdown_no_default_key_mappings=1

let mapleader=','
map <Leader>w <plug>NERDTreeTabsToggle<CR>

let maplocalleader = ','
"=============
syntax enable
filetype plugin on
filetype indent on
filetype plugin indent on

" TxtBrowser          高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件

set ci
set noet
set smarttab                 "be smart when using tabs
set expandtab                "use spaces instead of tabs
colorscheme elflord          " 着色模式
""colorscheme           " 着色模式
set background=dark
set guifont=Monaco:h10       " 字体 && 字号
set tabstop=4                " 设置tab键的宽度
set wildmenu                 "turn on the wild menu
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
"set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu                       " 显示行号
"set showmatch               " 显示括号配对情况
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,

set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldlevel=100            " 禁止自动折叠

"设置状态栏
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
set t_Co=256

" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测

filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

" 将所有以.html结尾的文档以Django Template语法进行渲染
" 本配置语句必须放在所有配置的最前面
au BufNewFile,BufRead *.html setf htmldjango

autocmd FileType python setlocal et sta sw=4 sts=4

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.asm,*.h,*.c,*.cpp,*.cc,*.java,*.cs,*.erl,*.hs,*.sh,*.lua,*.pl,*.pm,*.php,*.py,*.rb,*.erb,*.vim,*.js,*.css,*.xml,*.html,*.xhtml 2match Underlined /.\%81v/

" For Haskell
:let hs_highlight_delimiters=1            " 高亮定界符
:let hs_highlight_boolean=1               " 把True和False识别为关键字
:let hs_highlight_types=1                 " 把基本类型的名字识别为关键字
:let hs_highlight_more_types=1            " 把更多常用类型识别为关键字
:let hs_highlight_debug=1                 " 高亮调试函数的名字
:let hs_allow_hash_operator=1             " 阻止把#高亮为错误

" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

""""""""""""""""""""""""""""""
" => Visual mode related
" """"""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"======Moving around, tabs, windows and buffers==========
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" ======= 引号 && 括号自动匹配 ======= "
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" ======= 键映射 ======= "
"ctrl + h 将光标移到行首
imap <c-h> <ESC>I
" ctrl + j将光标移动到下一行
imap <c-j> <ESC>o
" ctrl + k将光标移到上一行的末尾
imap <c-k> <ESC>O
" Ctrl + L将光标移到当前行的行尾
imap <c-l> <ESC>A
" Ctrl + b将光标移到当前光标前
imap <c-b> <ESC>i
" Ctrl + f将光标移到当前光标后
imap <c-f> <ESC>la
""" jj                  保存文件并留在插入模式 [插入模式]
""imap jj <ESC>:w<CR>li
""
""" kk                  返回Normal模式 [插入模式]
""imap kk <ESC>l

" nt                  打开NERDTree [非插入模式]
map nt :NERDTree<CR>

" tl                  打开Taglist [非插入模式]
map tl :Tlist<CR>

" ======= 编译 && 运行 ======= "

" 编译源文件
func! CompileCode()
    exec "w"
    if &filetype == "c"
        exec "!gcc -Wall -std=c99 %<.c -o %<"
    elseif &filetype == "cpp"
        exec "!g++ -Wall -std=c++98 %<.cpp -o %<"
    elseif &filetype == "java"
        exec "!javac %<.java"
    elseif &filetype == "haskell"
        exec "!ghc --make %<.hs -o %<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    endif
endfunc

" 运行可执行文件
func! RunCode()
    exec "w"
    if &filetype == "c" || &filetype == "cpp" || &filetype == "haskell"
        exec "! ./%<"
    elseif &filetype == "java"
        exec "!java %<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    endif
endfunc

" Ctrl + L 一键保存、编译
map <F9> :call CompileCode()<CR>
""imap <c-l> <ESC>:call CompileCode()<CR>
""vmap <c-l> <ESC>:call CompileCode()<CR>
""
let g:templates_no_autocmd = 1
let g:email = 'cyouwork@gmail.com'
let g:user = 'yangjy'
"ctags"
if filereadable(".projectvim")
    source .projectvim
endif
map <C-F12> :!ctags -R --python-kinds=-i --fields=+iaS --extra=+q .<CR>
