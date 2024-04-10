:set nu
:set ari
:set ai
:set sw=4
:set sts=4
:set bkc
:set clipboard+=unnamedplus

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " Nerd tree
Plug 'https://github.com/tpope/vim-commentary' " gcc commenting
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/ap/vim-css-color' " CSS Color preview
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/abnt713/vim-hashpunk' " Color scheme

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-p> :PlugInstall<CR>
nnoremap <C-c> :PlugClean<CR>
nnoremap <C-h> :TagbarToggle<CR>

