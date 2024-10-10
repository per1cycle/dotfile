" common config
set tabstop=4
set shiftwidth=4
set nu
set scrolloff=15
set autoindent
set cursorline
set foldmethod=indent
set nofoldenable
set bg=dark
set spelllang=en_us
set hlsearch
set mouse=a
set paste
set showmatch
set autowrite
set autowriteall
set wildmenu

" prep vim plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ga     :Git add .<CR>
nnoremap <leader>gco    :Git commit -s<CR>
nnoremap <leader>gcl    :Git clone
nnoremap <leader>gps    :Git push <CR>
nnoremap <leader>gpu    :Git pull <CR>

"#short cut mapping for multi tab
"     In normal mode
"ctrl n new tab
"ctrl <left> <right> switch between tab
"ctrl Q exit a tab
nnoremap <C-n>      :tabnew<CR>
nnoremap <C-up>     :tabprevious<CR>
nnoremap <C-down>  :tabnext<CR>
nnoremap <C-d>      :q!<CR>

"tab <1-6> switch between tab
nnoremap <tab>1   :tabn 1 <cr>
nnoremap <tab>2   :tabn 2 <cr>
nnoremap <tab>3   :tabn 3 <cr>
nnoremap <tab>4   :tabn 4 <cr>
nnoremap <tab>5   :tabn 5 <cr>
nnoremap <tab>6   :tabn 6 <cr>

" nerd tree short cut
nnoremap <leader>nt :NERDTreeToggle<CR>

" paste from system clip board
map <C-Insert> "+y
map <S-Insert> "+p

" short cut for fzf
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Files<CR>

" terminal support
nnoremap <leader>vt :vert term<CR>
inoremap <leader>vt :vert term<CR>
nnoremap <leader>ht :term<CR>
inoremap <leader>ht :term<CR>

" short cut for switch between buffer
nnoremap <M-left>       :bprevious<CR>
inoremap <M-left>       :bprevious<CR>
nnoremap <M-right>      :bnext<CR>
inoremap <M-right>      :bnext<CR>

" for relative line editing
map 	<F2>			:set relativenumber<CR>
map 	<F3>			:set relativenumber!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ycm_global_ycm_extra_conf = '~/.vim/pack/z/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_auto_hover=''
"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_python_binary_path='/usr/bin/python3'
"
"nnoremap <leader>fi :YcmCompleter FixIt<cr>
"nnoremap <leader>gt :YcmCompleter GoTo<cr>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<cr>
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<cr>
"nnoremap <leader>gr :YcmCompleter GoToReferences<cr>
"nnoremap <leader>gi :YcmCompleter GoToInclude<cr>

"let g:UltiSnipsExpandTrigger="<CR>"
"let g:UltiSnipsJumpForwardTrigger="<down>"
"let g:UltiSnipsJumpBackwardTrigger="<up>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
""let g:ycm_file_type_
