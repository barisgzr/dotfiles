if ! filereadable(expand('~/.local/share/nvim/site/autoload/plug.vim'))
	echo "junegunn/vim-plug indiriliyor"
	silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'https://www.github.com/dracula/vim',{'as':'dracula'}
Plug 'https://www.github.com/tpope/vim-surround'
Plug 'https://www.github.com/vim-airline/vim-airline'
Plug 'https://www.github.com/preservim/nerdtree'
Plug 'https://www.github.com/rafi/awesome-vim-colorschemes'
Plug 'https://www.github.com/ryanoasis/vim-devicons'
Plug 'https://www.github.com/tc50cal/vim-terminal'
Plug 'https://www.github.com/vim-airline/vim-airline-themes'
Plug 'https://www.github.com/preservim/tagbar'
Plug 'https://www.github.com/neoclide/coc.nvim'
Plug 'https://github.com/chrisbra/changesplugin'
call plug#end()

"Colorscheme and Customization
:colorscheme deus
:syntax on
:set relativenumber
"NERDTree Configurations
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Airline Configurations
:let g:airline_powerline_fonts = 1
:let g:airline_theme = 'onedark'

"Coc Configurations
inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>" 


"Classic Confugrations
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set termguicolors
:set cursorline
:set encoding=UTF-8
:set shell=/bin/zsh
:set ignorecase
:set smartcase
:highlight CursorLineNR cterm=bold
:highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
:highlight Normal guibg=none
:highlight NonText guibg=none




let g:loaded_perl_provider = 0
