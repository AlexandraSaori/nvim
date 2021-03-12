let g:mapleader="\<space>"         "Set leader key.
syntax enable                      "Enables syntax highlighting.
set number                         "Line numbers.
set encoding=utf-8                 "The encoding displayed.
set fileencoding=utf-8             "The encoding written to file.
set pumheight=10                   "Makes popup menu smaller.
set ruler                          "Show the cursor position.
set nowrap                         "Display long lines as one.
set cmdheight=1                    "Bottom space to display messages and shit.
set mouse=a                        "Enable the mouse.set splitbelow                     
set splitbelow                     "Horizontal split will automatically be bellow.
set splitright                     "Vertical split will automatically be to the right.
set t_Co=256                       "Support 256 colors.
set tabstop=2                      "Insert two spaces for a tab.
set shiftwidth=2                   "Change the number of space characters inserted for indentation.
set smarttab                       "Makes tabbing smarter will realize you have 2 vs 4.
set expandtab                      "Converts tabs to spaces.
set autoindent                     "Good auto indent.
set number                         "Line numbers.
set laststatus=2                   "Always display the status line.
set cursorline                     "Enable highlightng of the current line.
set showtabline=1                  "Always shows by default the selected number of tabs.
set nobackup                       "This is recommended by coc.
set nowritebackup                  "This is recomended by coc.
set updatetime=300                 "Faster completition.
set clipboard=unnamedplus          "Copy paste between vim and everything else.
set formatoptions-=cro             "Stop new line continution of comments.
set timeoutlen=500                 "By default timeoutlen is 1000.
set noshowmode                     "Hide default status line.
set rnu                            "relative number errnu.
set termguicolors                  "is for some color scheme shit to correct the nord tone.
set bg=dark                        "Some themes need it to fix the color scheme.
set hlsearch                       "Highlight search results.
set incsearch                      "Incremental search to see results as you start typing the word."
set titlestring=%t                 "To dsiplay the filename as title."
set title                          "Set the filename as the title of the window."
set hidden
set guifont=Fira\ Code:h12

"=== BUILD IN NEOVIM OMNICOMPLETE ====
"aparentemente ese funciona para todos pero si se quiere solo para algunos
"lenguajes de utiliza las opciones de abajo
set omnifunc=syntaxcomplete#Complete
      " \ javascriptcomplete#CompleteJS 
      " \ htmlcomplete#CompleteTags
      " \ csscomplete#CompleteCSS
      " \ phpcomplete#CompletePHP

"=== COLOR SCHEME CONFIG ===
"To prevent that termguicolors don't give black & white colors only.
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"=== LIHGTLINE CONFIG ===
"Lightline colosheme config

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

"=== EMMET PLUG CONFIG ===
"We're replacing the <c-y> trigger for a simple , (comma)
let g:user_emmet_leader_key=','

"Ese comando aparentemente en vimscript
au! BufWritePost $MYVIMRC source%  "Auto source when writing to init.vim alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"You can stop me, fuck you frog
cmap W!! w !sudo tee%              
