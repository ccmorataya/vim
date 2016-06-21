inoremap jk <esc> 

" Copy/paste from system clipboard
map <leader>y "+y<CR>
map <leader>p "+P<CR>
  
set tabstop=4 shiftwidth=4 smarttab 

execute pathogen#infect() 
syntax enable 
filetype plugin indent on 
set background=dark 
colorscheme solarized 
let g:solarized_termcolors=256 
set number 
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars 
call pathogen#helptags() 

map <C-n> :NERDTreeToggle<CR> 

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 

"Implementacion de snippets en VIM 
Plugin 'MarcWeber/vim-addon-mw-utils' 
Plugin 'tomtom/tlib_vim' 
Plugin 'garbas/vim-snipmate' 

" optional: 
Plugin 'honza/vim-snippets' 
