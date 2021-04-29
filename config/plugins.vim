" Don't try to be vi compatible

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Setup Prettier command 
command! -nargs=0 Prettier :CocCommand prettier.formatFile
