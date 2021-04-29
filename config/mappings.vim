
let mapleader = " "


"Format 
noremap <leader>p :Prettier<CR>

" Open NERDTree in current file if it's posibly, else open NERDTree root
function! OpenFileTree()
  try
    :NERDTreeFind
  catch
    :NERDTree
  endtry
endfunction

" File explorer
noremap <silent>ff :call OpenFileTree()<CR>

"File edits
noremap <leader>ww :w<CR>
noremap <leader>wwq :wq<CR>
noremap <leader>qq :q<CR>


" Use tab for trigger completion with characters ahead and navigate.
"
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Move around splits
noremap <leader>l :wincmd l <CR>
noremap <leader>h :wincmd h <CR>
noremap <leader>j :wincmd j <CR>
noremap <leader>k :wincmd k <CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk


