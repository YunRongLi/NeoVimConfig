"----------------"
" Plugins
"----------------"
call plug#begin('~/.config/nvim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'  
    Plug 'majutsushi/tagbar'
    Plug 'easymotion/vim-easymotion'
    Plug 'jlanzarotta/bufexplorer'
    Plug 'mileszs/ack.vim'
    Plug 'vim-scripts/L9'
    Plug 'vim-scripts/FuzzyFinder'
    Plug 'sheerun/vim-polyglot'
    Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries', 'for': ['go'] }
	Plug 'ntpeters/vim-better-whitespace'
	"Plug 'nvim-treesitter/nvim-treesitter'" 

    if has('nvim')
        Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
	endif
    " Color Schemes"
    Plug 'sainnhe/gruvbox-material'

call plug#end()

