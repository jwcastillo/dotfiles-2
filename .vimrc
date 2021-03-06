syntax enable
let g:seoul256_background = 235
colorscheme seoul256
set cursorline
set hlsearch
set incsearch

execute pathogen#infect()
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
let g:ctrlp_custom_ignore='node_modules\|vendor\|.git'
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab
set title
set backup
set backupdir=~/.vim/backup//
set backupskip=/tmp*
set directory=~/.vim/backup//
set writebackup

set mouse=a

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F5> i**<C-r>=strftime('%A %d %B %r')<cr>**<cr>
nnoremap <C-l> :nohlsearch<CR>
vnoremap <C-c> "+y
cnoreabbrev W w

map <Esc>[B <Down>

if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

set wildmenu
set wildmode=full

highlight TrailingWhitespace ctermbg=darkgray guibg=darkgray
match TrailingWhitespace /\s\+$\| \+\ze\t/

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
