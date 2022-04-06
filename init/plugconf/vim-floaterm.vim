" ===
" === vim-floaterm
" ===
" terminal behaviors
let g:neoterm_autoscroll = 1
" autocmd TermOpen term://* startinsert
" noremap T :set splitbelow<CR>:split<CR>:res -10<CR>:term<CR>i
" nnoremap <C-t> :set splitright<CR>:vsplit<CR>:term<CR>i

" nnoremap T :FloatermNew --height=0.75 --width=0.7 --cwd=<buffer><cr>
let g:floaterm_width = 0.5
" let g:floaterm_height = 0.75 
let g:floaterm_wintype = 'vsplit'
let g:floaterm_position = 'belowright'
let g:floaterm_rootmarkers = ['build/CMakeFiles','.project', '.git', '.hg', '.svn', '.root']

nnoremap <silent> <c-t> :FloatermToggle<cr>
tnoremap <silent> <c-t> <C-\><C-N>:FloatermToggle<cr>
" tnoremap <silent> <esc> <C-\><C-N>:q!<cr>
" tnoremap <C-O> <C-\><C-N><C-O>
