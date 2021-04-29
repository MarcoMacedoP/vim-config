" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Install Plug manager!
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"Load plugins 
call plug#begin('~/.vim/plugged')

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'preservim/nerdtree'
  Plug 'leafgarland/typescript-vim'
  Plug 'endel/vim-github-colorscheme'

" Initialize plugin system
call plug#end()

" For plugins to load correctly
filetype plugin indent on


" Load config files
source ./config/mappings.vim
source ./config/theme.vim
source ./config/plugins.vim

