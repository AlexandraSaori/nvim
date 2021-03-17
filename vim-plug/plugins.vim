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
  " Lightline 
   Plug 'itchyny/lightline.vim'
  " Nord theme
  Plug 'arcticicestudio/nord-vim'
  " One Dark theme
  Plug 'joshdick/onedark.vim'
  " Emmet plug 
  Plug 'mattn/emmet-vim'
  " Vim Commentary
  Plug 'tpope/vim-commentary'
  "Nvim devicons
  Plug 'ryanoasis/vim-devicons'


call plug#end()
