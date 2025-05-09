set number
set ignorecase
set relativenumber
set shiftwidth=2
set tabstop=2
set hlsearch
set cursorline
set incsearch
set background=dark
set expandtab
set linebreak

noremap j gj
noremap k gk

let mapleader=' '
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

