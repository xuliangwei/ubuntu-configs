set nocompatible	"be iMproved, required
"set nu
filetype off		"required

" Key Mapping
nmap <F2> :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <F3> :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <F4> :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <silent> <F5> :Grep<CR>
nnoremap <silent> <F10> :WMToggle<CR>
nnoremap <silent> <F12> :A<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'vim-scripts/cscope_macros.vim'
Plugin 'othree/html5.vim'
Plugin 'rking/ag.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/php.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/winmanager'
Plugin 'ervandew/supertab'

filetype plugin indent on

"======================================================================
"                           Plugin Settings
"======================================================================
" Tlist
let Tlist_Show_One_File=1		"不同时显示多个文件的tag，只显示当前文件的   
let Tlist_Exit_OnlyWindow=1		"如果taglist窗口是最后一个窗口，则退出vim  
let Tlist_Ctags_Cmd="/usr/bin/ctags"	"将taglist与ctags关联  
let Tlist_Inc_Winwidth=0                "Terminal/Console

" Powerline
set laststatus=2
"set t_co=256

" SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" OmniCppComplete
set completeopt=longest,menu

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
