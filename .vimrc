set nocompatible              " required
set nohidden                  " for nerdtree? not sure, was in old config
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'jnurmine/Zenburn'
Plugin 'rdnetto/YCM-Generator'
Plugin 'spf13/vim-autoclose'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" non vundle things start here
" enable syntax highlighting
syntax on
syntax enable

" color things
set t_Co=256
colorscheme zenburn
" enable filetype plugins
filetype plugin on
filetype indent on

" set to auto read when file changed from outside
set autoread

" always show current position
set ruler

" turn line numbers on
set nu

" key mappings
imap jj <esc>
map ; :
:command WQ wq
:command Wq wq
:command W w

" set tab expands
set expandtab
set tabstop=4
set autoindent

" python things
set textwidth=79
set shiftwidth=4 " operation >> indents 4 columns; << unindents
set softtabstop=4 "insert/dete 4 spaces when hitting TAB/BCKSPC
set shiftround "round indent to multiple of 'shiftwidth'
set fileformat=unix
set encoding=utf-8
let python_highlight_all=1

" set where splits should occur
set splitbelow
set splitright

" jump between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" miscellaneous things

set incsearch " search as you type

"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/ " mark extra whitespace as red
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Plugin Configs

" YouCompleteme Configs
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion = 1

"Nerdtree things
" open automatically on empty vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeQuitOnOpen = 1 "quit when opening a file
" toggle opening and closing
nnoremap <Leader>f :NERDTreeToggle<Enter>


"" Syntastic Configs
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '!'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"nnoremap <c-n> :lnext<CR>
