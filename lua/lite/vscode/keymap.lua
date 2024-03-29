vim.cmd([[
let mapleader=" "
noremap H b
noremap J 5j
noremap K 5k
noremap L e

nnoremap <c-j> <c-v>
vnoremap <c-j> j
nnoremap <c-k> <c-v>
vnoremap <c-k> k

omap " i"
omap ' i'
omap w iw
omap / i/
omap ` i`
omap < i<
omap > i>
omap _ i_
omap [ i]
omap ] i[
omap ( i(
omap ) i)
omap { i{
omap } i}
omap + i+
omap - i-
omap : i:
xmap " i"
xmap ' i'
xmap w iw
xmap / i/
xmap ` i`
xmap < i<
xmap > i>
xmap _ i_
xmap [ i[
xmap ] i]
xmap ( i(
xmap ) i)
xmap { i{
xmap } i}
xmap + i+
xmap - i-
xmap : i:

"----------------------------------------------------------------------
"                           save and quit
"----------------------------------------------------------------------

map q <C-w>c
noremap Q q

" write to file
nmap <c-s> :w<CR>

" quit nvim
" nnoremap <C-q> :q!<cr>

"----------------------------------------------------------------------
"                          split windows
"----------------------------------------------------------------------

nmap s <nop>
nmap sh        :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
nmap sj        :set splitbelow<CR>:split<CR>
nmap sk        :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
nmap sl        :set splitright<CR>:vsplit<CR>
nmap <S-left>  :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
nmap <S-down>  :set splitbelow<CR>:split<CR>
nmap <S-up>    :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
nmap <S-right> :set splitright<CR>:vsplit<CR>

" nmap <c-h> <C-w>h
" nmap <c-l> <C-w>l
" nmap <leader>j <C-w>j
" nmap <leader>k <C-w>k
"
" " move around split windows
" nmap <left> <C-w>h
" nmap <down> <C-w>j
" nmap <up> <C-w>k
" nmap <right> <C-w>l
" " nnoremap <leader>c <C-w>c
"
" " resize split windows
" nmap <c-left>  :vertical resize+2<CR>
" nmap <c-down>  :res -2<CR>
" nmap <c-up>    :res +2<CR>
" nmap <c-right> :vertical resize-2<CR>
" nmap <leader>= <C-w>=
"
" move around split windows
nmap <left> <C-w>h
nmap <down> <C-w>j
nmap <up> <C-w>k
nmap <right> <C-w>l

nmap <leader>j <C-w>j
nmap <leader>k <C-w>k

" nnoremap <leader>c <C-w>c

" resize split windows
nmap <c-left>  <Cmd>call VSCodeNotify('workbench.action.increaseViewSize')<cr>
nmap <c-right> <Cmd>call VSCodeNotify('workbench.action.decreaseViewSize')<cr>
nmap <c-up> <Cmd>call VSCodeNotify('workbench.action.increaseViewSize')<cr>
nmap <c-down> <Cmd>call VSCodeNotify('workbench.action.decreaseViewSize')<cr>


"----------------------------------------------------------------------
"                               search
"----------------------------------------------------------------------

" prev and next search result
nnoremap n nzz
nnoremap N Nzz

" cancel the highlight of search result
noremap <silent> <esc> <esc>:nohlsearch<cr>

" find the placeholder
" nnoremap <LEADER><LEADER> <esc>/<++><CR>:nohlsearch<CR>c4l


"----------------------------------------------------------------------
"                      yank to system clipboard
"----------------------------------------------------------------------
" let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point [2]
" if executable(s:clip)
"     set clipboard=unnamedplus " default
"     au TextYankPost * if v:event.operator is 'y' | call system(s:clip, @0) | endif
" else
"     noremap y "+y
"     nnoremap yy "+yy
"     nnoremap Y "+y$
"     vnoremap y "+y`]
" endif

noremap y "+y
nnoremap yy "+yy
nnoremap Y "+y$
vnoremap y "+y`]
nnoremap \v v$h

nnoremap dm :execute("delmarks ").nr2char(getchar())<CR>
" { 'dm', cmd('execute("delmarks ").nr2char(getchar())'), opts(noremap, silent) },
"----------------------------------------------------------------------
"                                marco
"----------------------------------------------------------------------

nnoremap Q q1
nnoremap @ @1

"----------------------------------------------------------------------
"                             fold code
"----------------------------------------------------------------------

" indent code
vnoremap <tab> >gv
vnoremap <S-tab> <gv

"----------------------------------------------------------------------
"                              change tab
"----------------------------------------------------------------------
nmap e :tabp<CR>
nmap r :tabn<CR>
nmap bc :tabclose<CR>
noremap tt <Cmd>call VSCodeNotify('workbench.view.explorer')<CR>
" nnoremap T <Cmd>call VSCodeNotify('workbench.action.terminal.focus')<CR>

"----------------------------------------------------------------------
"                                 lsp
"----------------------------------------------------------------------

nmap gd <Cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>
nmap gi <Cmd>call VSCodeNotify('editor.action.goToImplementation')<cr>
nmap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<cr>
nmap gl <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<cr>
nmap <leader>rn <Cmd>call VSCodeNotify('editor.action.rename')<cr>
nmap <leader>. <Cmd>call VSCodeNotify('editor.action.quickFix')<cr>
nmap - <Cmd>call VSCodeNotify('editor.action.marker.prev')<cr>
nmap = <Cmd>call VSCodeNotify('editor.action.marker.next')<cr>

"----------------------------------------------------------------------
"                               file
"----------------------------------------------------------------------

nmap u <Cmd>call VSCodeNotify('undo')<CR>
nmap <C-r> <Cmd>call VSCodeNotify('redo')<CR>
nmap sw <Cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>
nmap sf <Cmd>call VSCodeNotify('workbench.action.quickOpen')<cr>
" vnoremap = :Tabularize /

]])
