version 5.x
map <Right> <Space>
set showmatch incsearch wrapmargin=4

let softtab=$ENVSOFTTAB
let m_autoreload=$ENVAUTORELOAD

if m_autoreload == '1'
	set autoread
end

set nocompatible
filetype on

set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

let python_highlight_builtins = 1
let python_highlight_exceptions = 1
let python_highlight_string_format = 1
let python_highlight_doctests = 2

filetype indent on

syntax on
set nu

set backspace=2

set scrolloff=2
set whichwrap=<,>,[,] 
set autoindent
set fileformat=unix
set formatoptions=tcq2
set mouse=a
set ruler
set shiftwidth=2
set smartindent
set tabstop=2
set textmode
set textwidth=0
"set textwidth=78
  
"hi Normal guibg=black
"hi Normal guifg=gray80

" Mappings

map z 0
map m $

set cindent

" Column Guides
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")

" Enable widescreen mouse support if it's available
if has("mouse_sgr")
	set ttymouse=sgr
else
	set ttymouse=xterm2
end
