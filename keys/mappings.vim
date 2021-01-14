"Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

"Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"I hate to escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>

"Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

"TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>"
"SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>

"Para que tambien se pueda salvar ctrl + s 
nnoremap <C-s> :w<CR>

"Alternate way to quit
"nnoremap <C-Q> : wq!<CR>

"Use control-c instead of escape
"nnoremap <C-c> <Esc>

"<TAB>: completition
inoremap <expr><TAB> pumvisible() ? "\<C-n>":"\<TAB>"



"Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"nnoremam <Leader>o o<Esc>^Da
"nnoremam <Leader>o o<Esc>^Da


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

"Esconde el NERDTree con <CTRL> + <b>
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
