set encoding=utf-8
set nu
set clipboard=unnamed

" Plug plugins
call plug#begin('~/.vim/plugged')
 
" lightline plugin -- vim and git status at the bottom of the vim 
Plug 'itchyny/lightline.vim'

" vim-plyglot syntax stuff
Plug 'pearofducks/ansible-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mitsuhiko/vim-python-combined'
Plug 'aliev/vim-compiler-python'
Plug 'stephpy/vim-yaml'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'

call plug#end()

" enable statusline (lightline)
set laststatus=2

" enable syntax and onedark theme
syntax on

" onedark.vim override: Don't set a background color when running in a terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui"))
  let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " No `bg` setting
end

let g:onedark_termcolors=256
colorscheme onedark
