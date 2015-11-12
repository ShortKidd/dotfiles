set nocompatible
syntax enable

filetype plugin indent on

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" if $COLORTERM == 'xterm'
"     set t_Co=256
" endif

set t_Co=256

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set noerrorbells
set novisualbell
set tm=500
set t_vb=

set hlsearch

set bs=2

set history=1000

let g:kolor_italic=1
let g:kolor_bold=1
let g:kolor_underlined=0
let g:kolor_alternative_matchparen=0
set background=dark
colorscheme kolor

map j gj
map k gk

map <silent> <C-l> :noh<cr>

set nu
set ruler
set rnu

set ignorecase
set smartcase

nore ; :
nore , ;

execute "set colorcolumn=" . join(range(80,335),',')
" highlight ColorColumn ctermbg=9

" highlight Normal ctermfg=9

" ColorStepper
" source ~/.vim/bundle/colorstepper/colorstepper.vim
" nmap <F6> <Plug>ColorstepNext
" nmap <F7> <Plug>ColorstepReload
"  nmap <F5> <Plug>ColorstepPrev

if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \ exe "normal g'\"" |
    \ endif
endif


