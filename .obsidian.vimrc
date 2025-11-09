" --- READ ME FIRST ---
" This is the config for the Obsidian "Vimrc Support" plugin.
" It is NOT real Vim and has many limitations.
"
" - The leader key is ALWAYS \ (backslash).
" - You can't use 'let', 'nnoremap', 'xnoremap', etc.
" - Use :action to call Obsidian-specific commands.
" ---------------------------------------------------


" Map \pv to open/close the file explorer
nmap <leader>pv :action workbench:toggle-left-sidebar

" Join lines without moving the cursor
" nmap J mzJ`z

" Center the screen when scrolling half a page
nmap <c-d> <c-d>zz
nmap <c-u> <c-u>zz

" Center the screen on search results
nmap n nzzzv
nmap N Nzzzv

" Move selected lines up/down (using Obsidian's commands)
vmap J :action editor:move-line-down
vmap K :action editor:move-line-up

" Paste over selection (using \p)
vmap <leader>p "_dP

set clipboard=unnamedplus
