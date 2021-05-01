call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/completion-nvim'
Plug 'ziglang/zig.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'

call plug#end()


" Taglist
let Tlist_Use_Right_Window = 1
let Tlist_Sort_Type = "name"
nnoremap <silent> <F8> :TlistToggle<CR>

" Tab support
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

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

" Set the working directory to wherever the open file lives
set autochdir

"Search support
set incsearch
set hlsearch
set colorcolumn=80
highlight ColorColumn ctermbg=Blue guibg=Black

"Open nerd tree
map <C-n> :NERDTreeToggle<CR>

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

"Ubuntu terminal color
"#300A24

"All files
colorscheme softblue
set nu "line numbering
set clipboard=unnamed
set autoindent
set smartindent
set pastetoggle=<F3>

"Flag unnecessary whitespace
highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.cpp,*.h,*.hpp match BadWhiteSpace /\s\+$/

" Add start screen config
source $HOME/.config/nvim/plug-config/start-screen.vim

" Add zig lsp
source $HOME/.config/nvim/plug-config/ziglsp.vim

" Add web 
source $HOME/.config/nvim/plug-config/web.vim

" Add python
source $HOME/.config/nvim/plug-config/python.vim
