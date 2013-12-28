" Additional Configurations depends on OS"
if has("mac")
  source ./.mac.vimrc
elseif has("unix")
  source ./.unix.vimrc
elseif has("win32")
  source ./.win.vimrc
endif
" Additional Configurations "
" Additional Configuration for Mac "
"if filereadable(expand('~/.vimrc.mac'))
"	source ~/.mac.vimrc
"endif

" Turn off compatible mode
" enables VIM's feature
set nocompatible

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Better Command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches
set hlsearch
" Map <C-L> (redraw screen) to also turn off search highlighting until the next search (defined later)

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" filetype-oriented feature
" - intelligent auto-indenting
" - piletype-specific plugins
filetype indent plugin on

"incremental search"
set incsearch

"Syntax highlighting"
syntax on

"HardTab highlighting
"	Need to set terminal support color in shell/screen configuration
"	e.g.	in case screen:	'term xterm-256color'
"		in case zsh:	'export TERM=xterm-256color'
highlight HardTab cterm=none ctermbg=17
autocmd BufWinEnter * 2 match HardTab /\t\+/

"ColorColumn
set colorcolumn=81,121
highlight ColorColumn ctermfg=11 ctermbg=17

" foldmethod
"set foldmethod=syntax

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


" ============================================================
" Indentation options
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as two characters wide.
set shiftwidth=8
set tabstop=8
" ============================================================

" Display the cursor position on the last line of the screen or in the status line of a window
" set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2
"set statusline=%F%r%h%=
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%4*\ %<%F\ %*            "full path
set statusline +=%2*%m\ %r\ %*                "modified flag
set statusline +=%3*ff\=%{&ff}%*            "file format
set statusline+=%3*\ enc=%{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline +=%3*ftype\=%y%*                "file type
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor
hi User1 guifg=red guibg=darkgray ctermfg=red ctermbg=darkgray
hi User2 guifg=yellow guibg=darkgray ctermfg=yellow ctermbg=darkgray
hi User3 guifg=white guibg=darkgray ctermfg=white ctermbg=darkgray
hi User4 guifg=green guibg=darkgray ctermfg=green ctermbg=darkgray
hi User5 guifg=yellow guibg=darkgray ctermfg=yellow ctermbg=darkgray

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  
" If visualbell is unset, this does nothing.
set t_vb=

"mouse setting
set mouse= "disable use of mouse for all modes
"set mouse=a "Enable use of the mouse for all modes

set ambiwidth=double


"au InsertEnter * hi StatusLine guifg=Darkblue guibg=DarkYellow gui=none ctermfg=Yellow ctermbg=DarkBlue cterm=none
"au InsertLeave * hi StatusLine guifg=Darkblue guibg=Black gui=none ctermfg=Black ctermbg=White cterm=none

highlight Folded guibg=DarkGray guifg=Blue gui=none ctermfg=Yellow ctermbg=DarkGray cterm=none
highlight FoldColumn guibg=DarkGray guifg=Blue gui=none ctermfg=Yellow ctermbg=DarkRed cterm=none

" =====================================================================
"Mapping

" Map Y to act like D and C, i.e. to yank until EOL, Lather than act as yy, which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

"HJKL for INSERT mode
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

"Jump to next/previous place which is same indent"
nn <C-p> k:call search ("^". matchstr (getline (line (".")+ 1),'\(\s*\)') ."\\S", 'b')<CR>^
nn <C-n> :call search ("^". matchstr (getline (line (".")), '\(\s*\)')."\\S")<CR>^

"C-n to move to next file
" #$# C-n is already used so that need to fix other key
"nmap <silent> <C-n> :update<CR>:bn<CR>
"imap <silent> <C-n> <ESC>:update<CR>:bn<CR>
"vmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
"cmap <silent> <C-n> <ESC>:update<CR>:bn<CR>
