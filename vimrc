set nocompatible
filetype off
filetype plugin indent off    " required

set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set title

"" highlight whitespace at the end of a line
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

function StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction

if !empty(glob('~/.vim/autoload/pathogen.vim'))
    execute pathogen#infect()
endif

syntax on
filetype plugin indent on    " required

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
