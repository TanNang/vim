" xterm-256color
set t_Co=256

" vundle 插件管理器
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'taglist.vim'
call vundle#end()
filetype plugin indent on

" 配色主题 molokai
colo molokai
" 字体 Consolas 12号大小
" set guifont=Consolas:h12

" tab替换为4个空格
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" 设置粘贴模式 F12
set pastetoggle=<F12>

" 使用语法高亮定义代码折叠
set foldmethod=syntax
" 打开文件时默认不折叠代码
set foldlevelstart=99

" 设置文件的代码形式 utf8
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
" gvim提示信息防止乱码
" language messages zh_CN.utf-8
" language messages en_US.utf-8
" set helplang=cn " 设置中文帮助
set history=1000    " 保留历史记录
set nu! " 设置显示行号
set wrap    " 设置自动换行
set linebreak   " 整词换行，与自动换行搭配使用
set list    " 显示制表符和行尾符$
set autochdir   " 自动设置当前目录为正在编辑的目录
set hidden  " 自动隐藏没有保存的缓冲区，切换buffer时不给出保存当前buffer的提示
set scrolloff=5 " 在光标接近底端或顶端时，自动下滚或上滚
set showtabline=2   " 设置显示标签栏
set autoread    " 设置当文件在外部被修改，自动更新该文件
set nobackup    " 不生成备份文件
set noundofile  " 不生成un~文件

set hlsearch    " 高亮显示查找结果
set incsearch   " 增量查找

" 状态栏的设置
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]   " 显示文件名：总行数，总的字符数
set ruler   " 在编辑过程中，在右下角显示光标位置的状态行

" 代码设置
syntax enable   " 打开语法高亮
syntax on   " 打开语法高亮
set showmatch   " 设置匹配模式,相当于括号匹配
set smartindent " 智能对齐
" set cursorcolumn  " 启用光标列
set cursorline  " 启用光标行
set guicursor+=a:blinkon0   " 设置光标不闪烁
set showcmd " 状态栏显示当前执行的命令
set fdm=indent

" ========= Plugin 配置 =========
" NERDTree 打开/关闭快捷键
map <F2> :NERDTreeToggle<CR>
" NERDTree 默认路径配置
" au VIMEnter * NERDTree D:\vim
let NERDTreeMinimalUI = 1   " 关闭书签标签('Press ? for help')
" 显示书签列表
let NERDTreeShowBookmarks=1
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=24
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略以下文件的显示
" let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" ========== taglist ==========
" 自动打开taglist
" let Tlist_Auto_Open=1
" 这里比较重要了，设置ctags的位置
let Tlist_Ctags_Cmd='ctags'
" 热键设置，呼出和关闭Taglist
map <F3> :TlistToggle<CR>
" 让taglist窗口出现在Vim的左边
" let Tlist_Use_Left_Window=1
" 让taglist窗口出现在Vim的右边
let Tlist_Use_Right_Window=1
" 当同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
" let Tlist_File_Fold_Auto_Close=1
" 只显示一个文件中的tag，默认为显示多个
let Tlist_Show_One_File=1
" Tag的排序规则，以名字排序；默认是以在文件中出现的顺序排序
" let Tlist_Sort_Type='name'
" Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_GainFocus_On_ToggleOpen=1
" taglist始终解析文件中的tag，不管taglist窗口有没有打开
let Tlist_Process_File_Always=1
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1
" 设置窗体宽度，可以根据自己喜好设置
let Tlist_WinWidth=24
" 缺省情况下，双击一个tag时，才会跳到该tag定义的位置，设置单击tag就跳转
" let Tlist_Use_SingleClick=1

" map快捷键映射
" map <A-o> :tabnew<CR>
" map <A-w> :q!<CR>
" map <A-W> :qa!<CR>
" map <A-s> :mks! $VIM/_Session.vim<CR>
" map <A-l> :so $VIM/_Session.vim<CR>
