set noexpandtab
set tabstop=4
set shiftwidth=4
set autoindent

set conceallevel=2

colorscheme solarized8
set background=dark
command Light set background=light
command Dark set background=dark

syntax on
set number

set encoding=utf-8

set spell
set spelllang=en_gb spell
set spellfile=~/.vim/spell/maths.utf-8.add
syntax spell toplevel

set shell=/bin/zsh

set backspace=2
set guifont=Menlo:h15

map <C-n> :NERDTreeToggle<CR>

command Es execute "set spell | set spelllang=es spell"
command En execute "set spell | set spelllang=en_gb spell"

imap \'a á
imap \'e é
imap \'i í
imap \'o ó
imap \'u ú
imap \~n ñ

imap \'A Á
imap \'E É
imap \'I Í
imap \'O Ó
imap \'U Ú
imap \~N Ñ

imap <F3> <C-R>=strftime("\\marginpar{%a %d/%m}")<CR>
imap <F2> <C-R>=strftime("`%Y\\%m\\%d %H:%M:%S %Z`")<CR>

" VIM LATEX
filetype plugin on

let g:tex_flavor='latex'
let g:python_recommended_style=0

augroup custom_filetypedetect 
	autocmd!
	autocmd BufRead,BufNewFile *.m,*.oct set filetype=octave 
	autocmd BufNewFile,BufRead *.cls set filetype=tex
	autocmd BufNewFile,BufRead *.wl,*.wls,*.nb set filetype=mma
augroup END 

augroup texfunctions
	autocmd!
	autocmd Filetype tex inoremap '' "
augroup END

