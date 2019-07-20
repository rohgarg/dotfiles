set nu  " set numbering
set nowrap " no wrapping
set colorcolumn=80 " highlight column # 80
set cursorline " highlight current line under cursor
set hlsearch " highlight search items
set incsearch " set incremental search
set autochdir " auto change directory

colorscheme solarized
set background=dark

set nocompatible

" if empty(v:servername) && exists('*remote_startserver')
"   call remote_startserver('VIM')
" endif

filetype plugin indent on
syntax enable

set smartindent
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif
