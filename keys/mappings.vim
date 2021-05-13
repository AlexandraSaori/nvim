" === GENERAL ===
" Command completition with <TAB>
imap <expr><TAB> pumvisible() ? "\<C-n>":"\<TAB>"

"To save file with: <CTRL> + <S> and keep insert mode active.
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

" ##  BUFFERS
"Better buffer navigation with vim keys
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Use alt + hjkl to resize windows
nmap <M-j>    :resize -2<CR>
nmap <M-k>    :resize +2<CR>
nmap <M-h>    :vertical resize -2<CR>
nmap <M-l>    :vertical resize +2<CR>

"## TERMINAL 
" To return the terminal to NORMAL mode with <ESC>
tnoremap <Esc> <C-\><C-n>

"Open the terminal in insert mode
"To open the terminal: <CTRL> + <t>
au BufEnter * if &buftype == 'terminal' | :stopinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nmap <c-t> :call OpenTerminal()<CR>

"=== PLUGIN MAPPINGS ===

" ## NERDTree 
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automatically close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"To hide NERDTree:  <CTRL> + <b>
nmap <silent> <C-b> :NERDTreeToggle<CR>

" ## FZF
" To use fzf inside Neovim
" ctrl-n: open file in new tab.
" ctrl-h: open file in horizontal buffer.
" ctrl-v: open file in a vertical buffer.
nmap <C-p> :FZF<CR>
let g:fzf_action = {
      \ 'ctrl-n': 'tab split',
      \ 'ctrl-h': 'split',
      \ 'ctrl-v': 'vsplit',
      \}

"## AUTOPOPUP MENU
"Better nav for omnicomplete / completition menu
imap <expr> <c-j> ("\<C-n>")
imap <expr> <c-k> ("\<C-p>")

"## PRETTIER
"To setup prettier command to format the current buffer 
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"Ranger format with <leader> f
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


