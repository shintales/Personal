"Python files
"call plug#begin('~/.vim/plugged')
"Plug 'vim-scripts/indentpython.vim'
"call plug#end()

" LSP Setup
" pip install 'python-language-server[all]'

" lua << EOF
" require'nvim_lsp'.pyls.setup{}
" EOF

set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

let python_highlight_all=1
syntax on
set encoding=utf-8
au BufNewFile,BufRead *.py,*.cpp set 
	\ tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ fileformat=unix
	\ expandtab
