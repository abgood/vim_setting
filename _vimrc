""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

" history文件中需要记录的行数 
set history=100 

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 与windows共享剪贴板 
set clipboard+=unnamed 

" 侦测文件类型 
filetype on 

" 载入文件类型插件 
filetype plugin on 

" 为特定文件类型载入相关缩进文件 
filetype indent on 

" 保存全局变量 
set viminfo+=! 

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" 语法高亮 
syntax on 
syntax enable

" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 

" 设置默认颜色主题
colorscheme desert

" 设置当前行显示
set nu
set cursorline
set cc=120


" 自动折叠 C和C++代码
" au BufReadPost *.h,*.inl,*.inc,*.hpp,*.c,*.cpp    syn region myFold start="{" end="}" transparent fold
" au BufReadPost *.h,*.inl,*.inc,*.hpp,*.c,*.cpp    syn sync fromstart
" au BufReadPost *.h,*.inl,*.inc,*.hpp,*.c,*.cpp    set foldmethod=syntax

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup 

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
"set buftype=
set bufhidden=hide 

" 设置目录
set directory=.,~/tmp,/var/tmp,/tmp

" tab补齐忽略的文件类型
set suffixes=.bak,~,.o,.h,.info,.swp,.aux,.bbl,.blg,.dvi,.lof,.log,.lot,.ps,.toc

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=1 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

" 设置Leader键
let mapleader=","
let g:mapleader=","

" 设置相关快捷键
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>x :x<cr>
nmap <leader>f :FirstExplorerWindow<cr>

ino <C-v> <esc>:set paste<cr>mui<C-R>+<esc>mv'uV'v=:set nopaste<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
set nohlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 总是显示状态行 
set laststatus=2 

" 自动补全
set completeopt=longest,menu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 不要用空格代替制表符 
set expandtab 

" 不要换行 
set nowrap 

" 在行和段开始处使用制表符 
set smarttab 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示普通txt文件（需要txt.vim脚本） 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
au BufRead,BufNewFile * setfiletype txt 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 用空格键来开关折叠 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"set foldenable 
"set foldmethod=manual 
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" taglist.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 按照名称排序 
let Tlist_Sort_Type = "name" 

" 在右侧显示窗口 
let Tlist_Use_Right_Window = 0 

" 压缩方式 
let Tlist_Compart_Format = 1 

" 如果只有一个buffer，kill窗口也kill掉buffer 
let Tlist_Exist_OnlyWindow = 0 

" 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 1

" 同时只显示一个文件的tag
let Tlist_Show_One_File = 1

" 要显示折叠树 
let Tlist_Enable_Fold_Column = 0 

" let Tlist_Show_One_File=1
let Tlist_Auto_Open=0

"打开时焦点不放在tl窗口中
let TList_GainFocus_On_ToggleOpen = 0  

" 设置快速生成tags的方法
nmap <leader>ta :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" minibufexpl.vim 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 0
let g:miniBufExplMoreThanOne=0  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" NERDTree.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"NERBufExplMapCTabSwitchBufs = 1D Tree
"let NERDChristmasTree=1
"let NERDTreeAutoCenter=1
"let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
"let NERDTreeMouseMode=2
"let NERDTreeShowBookmarks=1
"let NERDTreeShowFiles=1
"let NERDTreeShowHidden=1
"let NERDTreeShowLineNumbers=1
"let NERDTreeWinPos='left'
"let NERDTreeWinSize=31
"nnoremap <silent> <leader>f :NERDTreeToggle<CR>

"当剩余最后一个NERDTree的时候，那么退出
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

"Close all open buffers on entering a window if the only
"buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
        if exists("t:NERDTreeBufName")
                if bufwinnr(t:NERDTreeBufName) != -1
                        if winnr("$") == 1
                                qa
                        elseif winnr("$") == 2
                                if bufwinnr("__Tag_List__") != -1
                                        qa
                                endif
                        elseif winnr("$") == 3
                                if bufwinnr("_Tag_List__") != -1 && bufwinnr("-TabBar-") != -1
                                        qa
                                endif
                        endif
                endif
        elseif winnr("$") == 1
                if bufwinnr("-TabBar-") != -1
                        qa
                endif
        endif
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"winmanager.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
let g:winManagerWidth = 30
let g:NERDTree_title='[NERD Tree]'
let g:winManagerWindowLayout='NERDTree|TagList'

function! NERDTree_Start()
        exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
        return 1
endfunction

nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>


