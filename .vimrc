" ------------------------------
" Name: vimrc for Ubuntu Linux
" Author: keelii
" Email: keeliizhou@gmail.com
" ------------------------------

" ----- Extenal Plugin ----- {{{
runtime! macros/matchit.vim
" }}}

" ----- Plug ----- {{{
call plug#begin('~/.vim/plugged/')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'

Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'

Plug 'othree/yajs.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'keelii/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mkitt/tabline.vim'

Plug 'godlygeek/tabular'
Plug 'mitermayer/vim-prettier'
Plug 'editorconfig/editorconfig-vim'

Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

call plug#end()
" }}}

" ----- Prettier {{{
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#tab_width = 4
let g:prettier#config#trailing_comma = 'none'
" }}}

" ----- NerdTree ----- {{{
let NERDTreeIgnore=['.idea', '.vscode', 'node_modules', '*.pyc']
let NERDTreeBookmarksFile = '~/.NERDTreeBookmarks'
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksSort = 1
let NERDTreeShowLineNumbers = 0
let NERDTreeShowBookmarks = 1
let g:NERDTreeWinPos = 'right'
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
nmap <leader>d :NERDTreeToggle <cr>
" if exists('g:NERDTreeWinPos')
"     autocmd vimenter * NERDTree D:\repo
" endif

" }}}

" ----- Markdown ----- {{{
let g:vim_markdown_folding_disabled = 1
" }}}

" ----- Ctrlp ----- {{{
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
set wildignore+=*\\.git\\*,*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc
" }}}

" ----- SnipMate ----- {{{
" Allow for vimrc re-sourcing
let g:snipMate = get(g:, 'snipMate', {})
" }}}

" ----- Neocomplete ----- {{{
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
" }}}

" ----- NERDCommenter ----- {{{
let g:NERDSpaceDelims = 1
" }}}


" Startup {{{
filetype indent plugin on

augroup vimrcEx
au!

autocmd FileType text setlocal textwidth=78

augroup END

" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal foldlevel=0


    " 打开文件总是定位到上次编辑的位置
    autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"<space>" |
      \ endif

    augroup END
augroup END
" }}}

" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
set wildignore+=*/node_modules/*,*/build/*
set path+=**
set wildmenu
" }}}

" Lang & Encoding {{{
set fileencodings=ucs-bom,utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
" set langmenu=en_US
" set helplang=cn
" let $LANG = 'en_US.UTF-8'
" language messages zh_CN.UTF-8
" source $VIMRUNTIME/delmenu.vim
" source $VIMRUNTIME/menu.vim
" }}}

" GUI {{{
" colorscheme Tomorrow-Night
colorscheme gruvbox
set background=dark
" colorscheme onedark

set laststatus=2
" set cursorline
set hlsearch
set nonumber
" 窗口大小
" set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
" set listchars=tab:▶\ ,eol:¬,trail:·,extends:>,precedes:<
set showbreak=›
set guifont=Source\ Code\ Pro\ for\ Powerline\ 14

" set guifont=Fantasque_Sans_Mono:h12:cANSI
set linespace=4


" }}}

" Format {{{

set breakindent
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set foldmethod=indent
set foldlevel=2
syntax on
" }}}

" Keymap {{{
let mapleader=","

nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e $MYVIMRC<cr>
nmap <leader>0 :set foldlevel=0<cr>
nmap <leader>1 :set foldlevel=1<cr>
nmap <leader>2 :set foldlevel=2<cr>
nmap <leader>3 :set foldlevel=3<cr>

nmap tn :tabnew<cr>
nmap th :tabprev<cr>
nmap tl :tabnext<cr>

" 移动分割窗口
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" 正常模式下 alt+j,k,h,l 调整分割窗口大小
nnoremap <leader>j :resize +5<cr>
nnoremap <leader>k :resize -5<cr>
nnoremap <leader>h :vertical resize -5<cr>
nnoremap <leader>l :vertical resize +5<cr>

" 插入模式移动光标 alt + 方向键
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <left>
inoremap <M-l> <Right>

" IDE like delete
inoremap <C-BS> <Esc>bdei

nnoremap vv ^vg_
" 转换当前行为大写
inoremap <C-u> <esc>mzgUiw`za
" 命令模式下的行首尾
cnoremap <C-a> <home>
cnoremap <C-e> <end>

nnoremap <F2> :setlocal number!<cr>
nnoremap <leader>w :set wrap!<cr>

imap <C-v> "+gP
vmap <C-c> "+y
vnoremap <BS> d
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y
imap <C-V> "+gP
map <S-Insert> "+gP
cmap <C-V> <C-R>+
cmap <S-Insert> <C-R>+

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" 打开当前目录
nmap <silent> <leader>ex :!xdg-open %:p:h<CR>

" 打印当前时间
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>


" 复制当前文件/路径到剪贴板
nmap <leader>fn :let @+= expand("%")<CR>
nmap <leader>fp :let @+= expand("%:p:h")<CR>
" 复制文本到系统粘贴板
vmap <leader>cb :w !xclip -sel clip<CR>

"设置切换Buffer快捷键"
nnoremap <C-left> :bn<CR>
nnoremap <C-right> :bp<CR>

" }}}



" Function {{{
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
       let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()
" }}}

" Tmux {{{
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
" }}}

" Terminal {{{
" terminal 下无背景颜色
highlight Normal ctermbg=none
" --- }}}
