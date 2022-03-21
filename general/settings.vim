let g:mapleader="\<space>"             "Set leader key.
syntax enable                          "Enables syntax highlighting.
set number                             "Line numbers.
set encoding=utf-8                     "The encoding displayed.
set fileencoding=utf-8                 "The encoding written to file.
set pumheight=10                       "Makes popup menu smaller.
set ruler                              "Show the cursor position.
set nowrap                             "Display long lines as one.
set cmdheight=1                        "Bottom space to display messages and shit.
set mouse=a                            "Enable the mouse.set splitbelow                     
set splitbelow                         "Horizontal split will automatically be bellow.
set splitright                         "Vertical split will automatically be to the right.
set t_Co=256                           "Support 256 colors.
set tabstop=2                          "Insert two spaces for a tab.
set shiftwidth=2                       "Change the number of space characters inserted for indentation.
set smarttab                           "Makes tabbing smarter will realize you have 2 vs 4.
set expandtab                          "Converts tabs to spaces.
set autoindent                         "Good auto indent.
set number                             "Line numbers.
set laststatus=2                       "Always display the status line.
set cursorline                         "Enable highlightng of the current line.
set showtabline=1                      "Always shows by default the selected number of tabs.
set nobackup                           "This is recommended by coc.
set nowritebackup                      "This is recomended by coc.
set clipboard=unnamedplus              "To use clipboard"
set updatetime=300                     "Faster completition.
set formatoptions-=cro                 "Stop new line continution of comments.
set timeoutlen=500                     "By default timeoutlen is 1000.
set noshowmode                         "Hide default status line.
set rnu                                "relative number errnu.
set termguicolors                      "is for some color scheme shit to correct the nord tone.
set bg=dark                            "Some themes need it to fix the color scheme.
set hlsearch                           "Highlight search results.
set incsearch                          "Incremental search to see results as you start typing the word."
set titlestring=%t                     "To dsiplay the filename as title."
set title                              "Set the filename as the title of the window."
set hidden                             "hidden 
set shortmess+=c                       "suppress annoy messages"
set completeopt=menu,menuone,noselect  "don't select the first item."
set cpt=.,k,w,b                        "source for dictionary, current or other loaded buffers, see ':help cpt' 
filetype plugin on 

"=== BUILD IN NEOVIM OMNICOMPLETE ====
"Activate build in autocompletion 
set omnifunc=syntaxcomplete#Complete

" enable this plugin for filetyapes, '*' for all files.
let g:apc_enable_ft = { '*':1}

"=== COLOR SCHEME CONFIG ===
"To prevent that termguicolors don't give black & white colors only.
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"=== LIHGTLINE CONFIG ===
"Lightline colosheme config

let g:lightline = {
      \ 'colorscheme':'oceanicnext',
      \ 'tab_component_function': {
      \   'tabnum': 'LightlineWebDevIcons',
      \ },
      \ }

"Add icons in tabs
function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown','ext':'.md'}]

"=== EMMET PLUG CONFIG ===
"We're replacing the <c-y> trigger for a simple , (comma)
let g:user_emmet_leader_key=','



"Para que el omnifunc se active con cada archivo php
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Ese comando aparentemente en vimscript
au! BufWritePost $MYVIMRC source%  "Auto source when writing to init.vim alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"You can stop me, fuck you frog
cmap W!! w !sudo tee%              
