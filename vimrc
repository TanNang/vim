" vundle 插件管理器
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/  " vundle 主目录
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       " 基本插件，必须
Plugin 'scrooloose/nerdtree'        " NERDTree 目录树
Plugin 'jistr/vim-nerdtree-tabs'    " NERDTree 共享插件
Plugin 'kien/ctrlp.vim'             " 文件快速搜索插件
Plugin 'taglist.vim'                " ctags + taglist 插件
call vundle#end()
filetype plugin indent on

" 256-color
set t_Co=256
" molokai 主题
colo molokai

" Tab 替换为 4 个空格
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" 设置粘贴模式 <F12>
set pastetoggle=<F12>

" 设置字符编码 UTF-8
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,chinese,cp936

" 主功能设置
set history=1000    " 保留历史记录
set nu!             " 显示文件行号
set wrap            " 设置自动换行
set linebreak       " 整词换行，与自动换行搭配使用
set list            " 显示制表符和行尾符
set autochdir       " 自动切换工作目录
set hidden          " 自动隐藏未保存缓冲区
set scrolloff=5     " 在光标接近底端或顶端时，自动下滚或上滚
set showtabline=2   " 显示 vim 标签栏
set autoread        " 当文件在外部被修改时，自动更新文件
set nobackup        " 不生成 ~ 备份文件
set noundofile      " 不生成 un~ 文件
set hlsearch        " 高亮查找结果
set incsearch       " 启用增量查找

" 状态栏设置
set ruler           " 在右下角显示光标所在行
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]

" 代码设置
syntax enable               " 启用语法高亮
syntax on                   " 打开语法高亮
set showmatch               " 自动匹配括号
set smartindent             " 启用智能对齐
" set cursorcolumn          " 显示光标所在列
set cursorline              " 显示光标所在行
set guicursor+=a:blinkon0   " 设置光标不闪烁
set showcmd                 " 显示当前执行的命令

" 记忆上次光标位置
au BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal g'\"" | endif

" ========= Plugin: NERDTree =========
" 自动呼出 NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 呼出/关闭快捷键 <F2>
map <F2> :NERDTreeToggle<CR>
" 隐藏帮助文字 ('Press ? for help')
let NERDTreeMinimalUI=1
" 显示书签列表
let NERDTreeShowBookmarks=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 自动居中
let NERDTreeAutoCenter=1
" 显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=24
" 忽略以下文件的显示
let NERDTreeIgnore=['\.swo','\.swp']
" 当 NERDTree 窗口是最后一个窗口时自动退出 vim
au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ========= Plugin: taglist =========
" 自动呼出 taglist
" let Tlist_Auto_Open=1
" ctags 命令（可为绝对路径）
let Tlist_Ctags_Cmd='ctags'
" 呼出/关闭快捷键 <F3>
map <F3> :TlistToggle<CR>
" 将 taglist 窗口显示在左边
" let Tlist_Use_Left_Window=1
" 将 taglist 窗口显示在右边
let Tlist_Use_Right_Window=1
" 当同时显示多个文件的 tag 时，可使 taglist 只显示当前文件 tag，其它 tag 折叠
" let Tlist_File_Fold_Auto_Close=1
" 只显示一个文件的 tag，默认为显示多个
let Tlist_Show_One_File=1
" 以名称排序 tag，默认以定义顺序排序
" let Tlist_Sort_Type='name'
" tag 窗口打开时，焦点转自 tag 窗口
let Tlist_GainFocus_On_ToggleOpen=1
" 始终解析文件 tag
let Tlist_Process_File_Always=1
" 当 taglist 窗口是最后一个窗口时自动退出 vim
let Tlist_Exit_OnlyWindow=1
" 设置窗体宽度
let Tlist_WinWidth=24
