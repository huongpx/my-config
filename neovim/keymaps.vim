" Return to normal mode from insert mode by jj
imap jj <esc>

" Remove highlight
nmap <silent> <esc><esc> :noh<CR>

" Allow gf to open/create file if not exist
map gf :edit <cfile><CR>
