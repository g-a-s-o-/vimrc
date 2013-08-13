" Additional Configurations "
" Additional Configuration for Mac "
if filereadable(expand('~/.vimrc.mac'))
	source ~/.vimrc.mac
endif

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

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


" ============================================================
" Indentation options
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
"set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as two characters wide.
"set shiftwidth=2
"set tabstop=2
" ============================================================

" Display the cursor position on the last line of the screen or in the status line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  
" If visualbell is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

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
nn <C-k> k:call search ("^". matchstr (getline (line (".")+ 1),'\(\s*\)') ."\\S", 'b')<CR>^
nn <C-j> :call search ("^". matchstr (getline (line (".")), '\(\s*\)')."\\S")<CR>^
