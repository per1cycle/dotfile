" common config 
set tabstop=2
set shiftwidth=2
set expandtab
set nu
set scrolloff=5
set autoindent
set cursorline
set foldmethod=indent
set nofoldenable
set bg=dark
set spelllang=en_us
set hlsearch
set mouse=a

set showmatch
set autowrite
set autowriteall
set wildmenu

" vim plug 
call plug#begin()
Plug 'http://github.com/preservim/nerdtree'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'
call plug#end()


nnoremap <leader>ga :Git add .<CR>
nnoremap <leader>gco :Git commit -m 
nnoremap <leader>gcl :Git clone  
nnoremap <leader>gpsh :Git push <CR> 
nnoremap <leader>gpul :Git pull <CR> 


"#short cut mapping for multi tab 
"#常规F3影射为下一个多窗口，f2反之

nnoremap <F3>  <C-W>w
inoremap <F3>  <C-O><C-W>w
nnoremap <F2>  <C-S-W>W
inoremap <F2>  <C-O><C-W>W
"let g:ycm_global_ycm_extra_conf = '~/.vim/pack/z/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_auto_hover=''
"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_python_binary_path='/usr/bin/python3'
"
"let g:UltiSnipsExpandTrigger="<CR>"
"let g:UltiSnipsJumpForwardTrigger="<down>"
"let g:UltiSnipsJumpBackwardTrigger="<up>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
""let g:ycm_file_type_
"#short cuts

"注意，以下都是在normal mode下的按键映射
"ctrl n 新建标签页
"ctrl q 删除标签页
"ctrl <left> <right> 切换标签页
"ctrl Q 退出一个窗口
nnoremap <C-n>      :tabnew<CR>
nnoremap <C-w>      :tabclose<CR>
nnoremap <C-up>     :tabprevious<CR>
nnoremap <C-down>  :tabnext<CR>
nnoremap <F4>       :tabclose<CR>
nnoremap <C-d>      :q!<CR>

"tab <1-6>切换标签页
nnoremap <tab>1   :tabn 1 <cr>
nnoremap <tab>2   :tabn 2 <cr>
nnoremap <tab>3   :tabn 3 <cr>
nnoremap <tab>4   :tabn 4 <cr>
nnoremap <tab>5   :tabn 5 <cr>
nnoremap <tab>6   :tabn 6 <cr>

"ctrl z 撤销操作，ctrl y恢复操作
nnoremap <C-z>    :undo<CR>
nnoremap <C-y>    :redo<CR>

inoremap <C-z>    :undo<CR>
inoremap <C-y>    :redo<CR>


"nnoremap <leader>fi :YcmCompleter FixIt<cr>
"nnoremap <leader>gt :YcmCompleter GoTo<cr>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<cr>
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<cr>
"nnoremap <leader>gr :YcmCompleter GoToReferences<cr>
"nnoremap <leader>gi :YcmCompleter GoToInclude<cr>

nnoremap <leader>nt :NERDTreeToggle<CR>

vnoremap <C-c> "+y
vnoremap <C-v> "+p

nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Files<CR>

" fold method
" fold all
nnoremap <leader>fa zM<CR>
nnoremap <leader>ua zR<CR>
nnoremap <leader>uf zr<CR>

" terminal support
nnoremap <leader>vt :vert term<CR>
inoremap <leader>vt :vert term<CR>


nnoremap <leader>ht :term<CR>
inoremap <leader>ht :term<CR>












