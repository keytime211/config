" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

" Author: keytime211

" set：功能
" loader：vim特殊自定义按键
" noremap：normal模式下
" inoremap：insert模式

" ==============键盘=========================
"               映射/映射成空格
let mapleader=","
"===============功能=========================
"               打开颜色
syntax on
"               打开行号
set number
"               打开当前行号
set relativenumber
"               打开当前行下划线
set cursorline
"               打开下方提示按键
set showcmd
"               设置窗口自适应（自动换行）
set wrap
"               打开命令提示
set wildmenu
"===============搜索功能设置===================
"               打开搜索高亮
set hlsearch
"               每次打开都关闭搜索高亮
exec  "nohlsearch"
"               打开一边输入一边搜索
set incsearch
"               忽略搜索大小写
set ignorecase
"               智能大小写
set smartcase
"		,+z 映射成关闭搜索高亮
noremap <leader>z :nohlsearch<CR>
"               ,加+w insert退出到normal模式并保存
inoremap <leader>w <Esc>:w<CR>

"===============窗口大小设置==================
"		上下窗口 上size5
noremap <up> :res +5<CR>
"		上下窗口 下size5
noremap <down> :res -5<CR>
"		左右窗口 左size5
noremap <left> :vertical resize -5<CR>
"		左右窗口 右size5
noremap <right> :vertical resize +5<CR>
"		窗口光标左移
noremap <C-h> <C-w>h
"		窗口光标下移
noremap <C-j> <C-w>j
"		窗口光标上移
noremap <C-k> <C-w>k
"		窗口光标右移
noremap <C-l> <C-w>l
"		水平分割
noremap <leader>p :split<CR>
"		垂直分割
noremap <leader>v :vsplit<CR>

"===============更改键位=====================
noremap W	:w<CR>
noremap Q	:q<CR>



"===============标签页设置==================
"		新建标签页
noremap tu	:tabe<CR>
"		上一个标签页
noremap tN	:-tabnext<CR>
"		下一个标签
noremap tn	:+tabnext<CR>


"===============insert模式映射=================
inoremap jj <Esc>


"===============plug_install===================
call plug#begin('$HOME/.config/nvim/plugged')
"===============colors=========================
Plug 'mhinz/vim-startify'
Plug 'connorholyday/vim-snazzy'
" Plug 'w0ng/vim-hybrid'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'brooth/far.vim'

"===============coc.vim Plug======================
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}

Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

"===============Table======================
Plug 'dhruvasagar/vim-table-mode'


"===============junegunn/vim-easy-align======
Plug 'junegunn/vim-easy-align'

" Markdown
Plug 'plasticboy/vim-markdown'






call plug#end()

" ===
" === vim-airline
" ===
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'



"===
"===hybrid
"===
" set background=dark
" colorscheme hybrid

"===
"===hybrid
"===
colorscheme snazzy
let g:SnazzyTransparent = 1

"===
"===NERDTree
"===
noremap <leader>c :NERDTreeFind<CR>
noremap <leader>g :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore= [
         \'\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.swp$',
         \ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.ropeproject$',
	 \ ]

"===
"===coc.vim
"===
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-html',
	\ 'coc-java',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-prisma',
	\ 'coc-pyright',
	\ 'coc-stylelint',
	\ 'coc-stylelintplus',
	\ 'coc-tasks',
	\ 'coc-translator',
	\ 'coc-tsserver']

"===
"===vim-table-mode
"===
noremap <leader>tm :TableModeToggle<CR>

"===
"===easy-align
"===
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" ===
" === Markdown Settings
" ===
" zr：降低整个缓冲区的折叠级别
" zR: 打开所有折叠
" zm：增加整个缓冲区的折叠水平
" zM: 把所有东西都折叠起来
" za: 打开一个折叠你的光标所在
" zA：打开一个折叠你的光标递归
" zc: 关闭一个折叠你的光标所在
" zC：关闭一个折叠你的光标递归

