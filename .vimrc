let mapleader =" "

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Copy/paste from system clipboard
map <leader>y "+y<CR>
map <leader>p "+P<CR>

set nocompatible     "obliga a vim a no ser compatible con el antiguo vi
filetype off

set fileencoding=utf-8  "forzar la codificacion de documento a utf8
set showcmd
set autoindent
set copyindent
      "identaciones varias
set smarttab         "inserta tabulacion en la linea de acuerdo a shiftwidht
set shiftround       "identacion con parentesis varios
set cursorline
set cursorcolumn

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

"integrar air-line
set laststatus=2
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1

set number
set guifont=Inconsolata\ Bold\ 10

"activar nerdTree
map <C-n> :NERDTreeToggle<CR>	

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

map <F3> : call CompileGcc()<CR>
func! CompileGcc()
  exec "w"
  exec "!g++ % -o %<"
endfunc
 
map <F4> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  exec "!g++ % -o %<"
  exec "! ./%<"
endfunc

au FileType c set makeprg=gcc\ %
au FileType cpp set makeprg=g++\ %

map <F7> :cp <CR>
map <F8> :cn <CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

"Implementacion de snippets en VIM
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

"Colores a la linea actual segun el modo de edicion
Bundle 'ntpeters/vim-airline-colornum'

Plugin 'ryanoasis/vim-devicons'
