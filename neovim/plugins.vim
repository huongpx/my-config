" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

colorscheme onehalflight
let g:lightline = {
    \ 'colorscheme': 'onehalflight'
    \ }

