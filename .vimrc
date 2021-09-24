" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Uncomment the following to have Vim jump to the last position when reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" These are command that I edit.
syntax on                   " enables syntax highlighting
set hlsearch                " Enable search highlighting.
set linebreak               " Avoid wrapping a line in the middle of a word.
set wrap                    " Enable line wrapping.
set laststatus=2            " Always display the status bar.
set ruler                   " Always show cursor position.
set cursorline              " Highlight the line currently under cursor.
set number                  " Show line numbers on the sidebar.
set mouse=a                 " Enable mouse for scrolling and resizing.
set title                   " Set the window’s title, reflecting the file currently being edited.
set foldmethod=indent       " Fold based on indention levels.
set foldnestmax=3           " Only fold up to three nested levels.
set nofoldenable            " Disable folding by default.
set history=1000            " Increase the undo limit.
set wildignore+=.pyc,.swp   " Ignore files matching these patterns when opening files based on a glob pattern.
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set smartcase               " Do smart case matching
filetype plugin indent on   " load indentation rules and plugins according to the detected filetype
set showcmd                 " Show (partial) command in status line.
"set background=dark        " If using a dark background within the editing area and syntax highlighting turn on this option as well
"set incsearch		          " Incremental search
"set autowrite		          " Automatically save before commands like :next and :make
"set hidden		              " Hide buffers when they are abandoned

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
