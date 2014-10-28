"backup and swap dir
set backupdir=$HOME/.vimbackup
set directory=$HOME/.vimbackup

"for dict
nmap <C-j> <ESC>:!clear; echo <C-r><C-w>; dict <C-r><C-w><CR>

"make Vim's yank-buffer same as Clipboard"
"noremap v V
vnoremap <silent> <C-c> :!pbcopy;pbpaste<ESC>
vnoremap <silent> <C-x> :!pbcopy<ESC>

