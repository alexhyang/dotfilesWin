" make sure the Vimrc Support is installed
" https://publish.obsidian.md/hub/04+-+Guides%2C+Workflows%2C+%26+Courses/for+Vim+users
" https://github.com/esm7/obsidian-vimrc-support

" =====================================
"         Common Vim settings
" =====================================

" Use sequential pressing of keys j and k to escape insert mode (really common config for VIM)
inoremap jk <Esc>
inoremap JK <Esc>

" The keys j and k for visual and normal mode go to the visual line instead of the logical one (Really useful for a more organic experience)
noremap j gj
noremap k gk

" Uses H and L To navigate between blank lines in Visual and Normal modes.
noremap H ^
noremap L $


" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
