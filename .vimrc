let mapleader=" "
"让空格键成为leader键"

"----------基础配置-----------"
"-----------------------------"
syntax on "开启高亮"
set cursorline "启用当前光标所在行显示线"
set number "开启行号"
set relativenumber "开启相对行号。如不需要，可以将该参数改为norelativenumber"
set wrap "让文本始终显示在窗口内"
set showcmd "开启指令提示，会显示当前输入的内容"
set wildmenu "在普通模式下，会进行模糊补全提示"

set hlsearch "搜索时高亮显示"
exec "nohlsearch"
set incsearch "边输入边高亮显示搜索结果"
set ignorecase "搜索时，忽略大小写"
set smartcase "搜索时，使用只能大小写模糊"


"----------键位配置-----------"
"-----------------------------"
"Q为退出"
map Q :q<CR>
"S为保存"
map S :w<CR>"
"R为配置生效"
map R :source $MYVIMRC<CR>
"取消s快捷键，s快捷键原为删掉当前字符开始插入"
map s <nop>
"     设置分屏      "
"       左右
map ss :set splitright<CR>:vsplit<CR>
map sn :set nosplitright<CR>:vsplit<CR>
"       上下
map sm :set splitright<CR>:split<CR>
map s, :set nosplitright<CR>:split<CR>
"光标在多窗口间移动
"先空格，然后上下左右即可
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h
map <LEADER>l <C-w>l
map <LEADER><up> <C-w>k
map <LEADER><down> <C-w>j
map <LEADER><left> <C-w>h
map <LEADER><right> <C-w>l
"改变分屏的大小
"Ctrl+键盘区外的上下左右键改变分屏大小
map <C-up> :res +5<CR>
map <C-down> :res -5<CR>
map <C-left> :vertical resize +5<CR>
map <C-right> :vertical resize -5<CR>



"     行快捷键     "
"  0为行首-为行末  ”
map - $

"    定义方向按键   "
"         i         "
"       j k l       "
noremap j h
noremap k j
noremap i k
"大写时为移动5个单位"
noremap J 5h
noremap L 5l
noremap I 5k
noremap K 5j
"h为插入键          " 
noremap h i
noremap H I 
"LEADER CR为取消显示搜索结果"
noremap <LEADER><CR> :nohlsearch<CR>



"----------插件管理-----------"
"-----------------------------"
"说明：
"使用vim-plug插件管理器
"项目地址：https://github.com/junegunn/vim-plug

"vim-plug的安装：
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
"相关插件的项目地址为https://github.com/项目名
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

call plug#end()
"使用snazzy配色
color snazzy
"使用透明,服务器端由于要使用ssh，不建议使用
"let g:	SnazzyTransparent = 1
