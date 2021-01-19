" === GENERAL ===
"<TAB>: completition
inoremap <expr><TAB> pumvisible() ? "\<C-n>":"\<TAB>"

"Use control-c instead of escape
"nnoremap <C-c> <Esc>

" === BUFFERS ===
"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" === TERMINAL ===
" Regresa la terminal a modo NORMAL con esc
tnoremap <Esc> <C-\><C-n>

"Inicia la terminal en modo INSERTAR
"Abre la terminal con <CTRL> + <t>
au BufEnter * if &buftype == 'terminal' | :stopinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>

" === NERDTree ===
" Esconde el NERDTree con <CTRL> + <b>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" === FZF ===
" Inicia FZF dentro de nvim
nnoremap <C-f> :FZF<CR>
" ctrl-n: abre el archivo en nueva pestaña.
" ctrl-s: abre el archivo en buffer horizontal.
" ctrl-v: abre el archivo en buffer vertical.
let g:fzf_action = {
      \ 'ctrl-n': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \}

" === OTHER MAPPINGS ===
"nnoremam <Leader>o o<Esc>^Da
"nnoremam <Leader>o o<Esc>^Da

"Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

"I hate to escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>

"Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

"Para que tambien se pueda salvar ctrl + s 
"nnoremap <C-s> :w<CR>

