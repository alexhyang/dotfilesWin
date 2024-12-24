" This is the config file for vim and neovim on Window OS

" =====================================
"             Editing
" =====================================
syntax on

" change leader to space
nnoremap <Space> <Nop>
let mapleader=" "

set tabstop=2                   " number of spaces of each <Tab>
set expandtab                   " use spaces for tab
set shiftwidth=2                " code indentation size of >> and <<

set backspace=indent,eol,start  " enable <BS> to remove autoindent,
                                " end of line character, and start of line

set spell spelllang=en_us       " spell checking
set wrap linebreak              " wrap linebreak
" set columns=80                  " set column width limit
set colorcolumn=80              " set column width (80) marker
set mouse=a                     " add mouse support

" Define command to fill line with = or #
nnoremap <Leader>= 77A=<Esc>d80<bar>
nnoremap <Leader># 77A#<Esc>d80<bar>

" =====================================
"         Search and Replace
" =====================================
" case sensitivity in search
set ignorecase               " case-insensitive in searches with '/'
set smartcase                " case-sensitive distinguish cases
                             " outcome: ignore cases when all letters are
                             "     upper- or lower-case, but do not ignore
                             "     cases for mixed patterns

set incsearch " enable search as you type
set hlsearch  " enable search highlights

" stop highlighting
nnoremap <F3> :noh<CR>


" =====================================
"         Macros
" =====================================
" Markdown
let @t = "bi`\<Esc>ea`\<Esc>"
let @b = "bi**\<Esc>ea**\<Esc>"
let @i = "bi*\<Esc>ea*\<Esc>"
let @u = "o*\<Space>\<Space>\<Space>"
let @o = "o1.\<Space>\<Space>"
let @c = "o```\<CR>```\<Esc>kA"

" =====================================
"         Editor Interface
" =====================================
set number
set relativenumber

" set background and colorscheme
if has('gui_running')
    set background=light
else
    set background=dark
endif

set termguicolors
colorscheme catppuccin-macchiato

:command! Cat echo "mocha macchiato frappe latte"
:command! Mocha colorscheme catppuccin-mocha
:command! Machhi colorscheme catppuccin-macchiato
:command! Frappe colorscheme catppuccin-frappe
:command! Latte colorscheme catppuccin-latte

" disable audible bell
set noerrorbells visualbell t_vb=


" =====================================
"         Tabs and Windows
" =====================================
" map new tab command
nnoremap <C-n> :tabnew<CR>


" =====================================
"         Key mappings
" =====================================
" Fn mapping:
" F3 no highlight in search result
" F6 source .vimrc
" F7 toggle NERDTree
" F8 toggle tagbar
" F9 open .vimrc in new tab

map <F9> :tabedit $HOME/.vimrc<CR>
map <F6> :so $HOME/.vimrc<CR>

" disallow arrow keys in normal mode and insert mode
" normal mode
nnoremap <Left>  : echoe "Use h"<CR>
nnoremap <Right> : echoe "Use l"<CR>
nnoremap <Up>    : echoe "Use k"<CR>
nnoremap <Down>  : echoe "Use j"<CR>
" insert mode
inoremap <Left>  <ESC>: echoe "Use h"<CR>
inoremap <Right> <ESC>: echoe "Use l"<CR>
inoremap <Up>    <ESC>: echoe "Use k"<CR>
inoremap <Down>  <ESC>: echoe "Use j"<CR>

" use 'jk' to exit insert mode
inoremap jk  <ESC>
inoremap kj  <ESC>

" unbind some useless default key bindings
" 'Q' in normal mode enters Ex mode
nmap Q <Nop>


" =====================================
"         Plugin List
" =====================================

call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

