set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'jnurmine/Zenburn'
Plugin 'flazz/vim-colorschemes'
Plugin 'loremipsum'
Plugin 'alvan/vim-closetag'
Plugin 'benmills/vimux'
Plugin 'ryanoasis/vim-devicons'
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
Bundle 'Valloric/YouCompleteMe'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Personal config for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Vim tagbar
" set g:tagbar_ctags_bin
" nmap <F8> :TagbarToggle<CR>

" Taglist
let Tlist_Use_Right_Window = 1
nnoremap <silent> <F8> :TlistToggle<CR>

"Remap vimux maybe?
":nnoremap <buffer> <leader> xyz :call SomeFunc(input('Param: '))<CR>

" Rainbow paranthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Renamed commands
ab lorem Loremipsum

"split navigations
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"Mouse support
set mouse=a

"Search support
set incsearch
set hlsearch
set colorcolumn=80
highlight ColorColumn ctermbg=Blue guibg=Black

"Open nerd tree
map <C-n> :NERDTreeToggle<CR>

"Ubuntu terminal color
"#300A24

"All files
colorscheme softblue
set nu "line numbering
set clipboard=unnamed
set smartindent

"Python files
let python_highlight_all=1
syntax on
set encoding=utf-8
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

"Full stack
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

"Flag unnecessary whitespace
highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.cpp,*.h,*.hpp match BadWhiteSpace /\s\+$/

"Python with venv support
let g:ycm_python_binary_path='python'
