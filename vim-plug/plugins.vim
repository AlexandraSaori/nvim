"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'scrooloose/NERDTree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  "Lightlight 
   Plug 'itchyny/lightline.vim'
  "onedark theme
  Plug 'joshdick/onedark.vim'
  "Nord theme
  Plug 'arcticicestudio/nord-vim'
  "Emmet plug 
  Plug 'mattn/emmet-vim'
  "Vim Commentary
  Plug 'tpope/vim-commentary'
  "Indentation
  "Linter & Format Code (Web dev only)

  call plug#end()
