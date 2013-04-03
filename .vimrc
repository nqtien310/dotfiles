set nocompatible

"------------------------ Vundle -------------------------"
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'godlygeek/tabular'
Bundle 'mutewinter/vim-indent-guides'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/greplace.vim'
Bundle 'itspriddle/vim-jquery'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'kien/ctrlp.vim'
Bundle 'epmatsw/ag.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'
Bundle 'tienle/vim-itermux'

" vim-scripts repos
Bundle 'L9'
Bundle 'vis'
Bundle 'bocau'
Bundle 'YankRing.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kikijump/tslime.vim'
"-----------------------------------------------------------------------------
" Colors/ Theme
"-----------------------------------------------------------------------------
colo bocau

if has("syntax")
  syntax on
end

set hls                               " Highlighting search result

"------------------------  UI ----------------------------"
set ruler                             " show cursor position all the time
set nolazyredraw
set number                            " set line number on
set wildmenu
set ch=1                              " command line height
set backspace=indent,eol,start        " backspace through everything in insert mode
set report=0                          " tell us about changes
set guioptions=aegitcm                " win 180 50
set mousehide                         " hide mouse after chars typed
set mouse=a                           " mouse in all modes


"------------------- Text formatting ---------------------"
set autoindent
set smartindent
set nowrap
set tabstop=2
set softtabstop=2
set nosmarttab
set formatoptions+=n
set shiftwidth=2
set encoding=utf-8
set vb t_vb=
set virtualedit=all
set textwidth=80
set smartcase
set expandtab
set list
" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\`\             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set foldmethod=syntax
set foldnestmax=10
set nofoldenable                        "don't fold by default
set foldlevel=1
"set clipboard+=unnamed                  " yanks go on clipboard instead
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set cindent
"-------------------- Mapping ----------------------------"
let mapleader = ","

"Navigates through windows
nmap <silent> <C-l> <C-w><Right>
nmap <silent> <C-h> <C-w><Left>
nmap <silent> <C-j> <C-w><Up>
nmap <silent> <C-k> <C-w><Down>

"vv => split vertically
"vs => split horizontally
"vq => close window
nmap <silent> vv <C-w>v
nmap <silent> vs <C-w>s
nmap <silent> vq <C-w>q

"format entire file
nmap <leader>fef gg=G<C-O><C-O>
nmap <leader>q :bd<CR>

"Nerd tree
map <Leader>nt :NERDTreeToggle<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
"Ctrl + Space to auto complete on local buff
imap <C-Space> <C-P>

"Expand current file's path
cnoremap <C-F> <C-R>=expand('%:p:h')<CR>

nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
nnoremap gA :Ack! <cword><CR>
let g:CommandTMatchWindowAtTop = 1
let g:CommandTCancelMap=['<ESC>']
nnoremap <Leader><Space> :CommandT<CR>
nnoremap <Leader>b :CommandTBuffer<CR>
nnoremap <silent> <F4> :CommandTFlush<CR>
nnoremap <Leader>u :CommandTFlush<CR>

set wildignore+=*.o,*.obj,.git
