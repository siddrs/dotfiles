" Keybindings

" remove arrow key movement
"  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"      exec 'noremap' key '<Nop>'
"      exec 'inoremap' key '<Nop>'
"  endfor

" NvimTree
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <A-r> :NvimTreeToggle<CR>

nnoremap o ^
vnoremap o ^

" tab line over
nnoremap e >>^
vnoremap e >^

nnoremap w <<^
vnoremap w <^

nnoremap f za

" A better escape (jk to exit insert mode)
imap jk <Esc>