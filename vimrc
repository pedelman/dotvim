set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'justinmk/vim-syntax-extra'
Bundle 'airblade/vim-gitgutter'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'

syntax enable
" allow backspace in insert mode
set backspace=indent,eol,start
set encoding=utf-8
set t_Co=256

colorscheme Solarized
set guifont=Menlo

" display hidden buffers
set hidden
" turn off swap files
set noswapfile
set nobackup

" turn off annoying beep
set visualbell

" search settings
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase

" makes substitutions global by default
set gdefault

" set autoindent/expand tab
set ai
set et

" tab and autoindent setting
set shiftwidth=2
set tabstop=2

" set line numbers
set number
set ruler

" select all
map <Leader>A ggVG

" display tabs and carriage returns
set list 
set listchars=tab:▸\ ,eol:¬

" unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
   for key in ['<Up>', '<Down>', '<Left>', '<Right>']
      exe prefix . "noremap " . key . " <Nop>"
   endfor
endfor

" reload last position after reopening file
" copied from docs, see :help g`
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" clear search results with enter
map <CR> :noh <Cr>

" save a keystroke in normal mode
nnoremap ; :

" move around splits with ctrl hjkl
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" open .vimrc in a split quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload .vimrc to apply changes without reset
nnoremap <leader>sv :source $MYVIMRC<cr>

" faster buffer listing and switch
nnoremap <leader>l :ls <CR>:b<space>

" open nerdtree
map <Leader>o :NERDTree <Cr>

map <Leader>I :BundleInstall <Cr>
map <Leader>a :Ack<space>

" set backspace over all characters in insert
set bs=indent,eol,start

" hash rocket =>
imap <c-l> <space>=><space>

" remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

" rename current file and new file path
function! RenameFile()
   let old_name = expand('%')
   let new_name = input('New file name: ', expand('%'))
   if new_name != '' && new_name != old_name
      exec ':saveas ' . new_name
      exec ':silent !rm ' . old_name
      redraw!
   endif
endfunction

map <leader>n :call RenameFile()<cr>

function! g:ToggleNuMode()
  if(&rnu == 1)
    set nornu
  else
    set rnu
  endif
endfunction

map <leader># :call g:ToggleNuMode()<cr>

filetype plugin indent on
