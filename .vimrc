
" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
" REMEMBER to reload .vimrc(vim) and run :PlugInstall to
" install plugins.
call plug#end() 

" BASICS
set nocompatible
set number
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set scrolloff=8
set laststatus=2

" THEME
set termguicolors
syntax enable
set background=dark
colorscheme gruvbox 

" EMMET-VIM CONFIG
let g:user_emmet_leader_key=","
let g:user_emmet_settings=webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))

" LIGHTLINE CONFIG
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Change cursor shape between insert and normal mode in iTerm2.app
" if $TERM_PROGRAM =~ "iTerm"
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
" endif
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"VIM COMPLETES ME
"git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
