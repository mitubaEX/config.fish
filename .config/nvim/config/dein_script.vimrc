if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim')
    call dein#begin('~/.config/nvim')

    " Let dein manage dein
    " Required:
    call dein#add('~/.config/nvim/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#load_toml('~/dein.toml', {'lazy': 0})
    call dein#load_toml('~/dein_lang.toml', {'lazy': 1})
    " call dein#load_toml('~/dein_lazy.toml', {'lazy': 1})
    call dein#load_toml('~/dein_denite.toml', {'lazy': 1})
    if !has('nvim')
	call dein#add('roxma/nvim-yarp')
	call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    " You can specify revision/branch/tag.
    " call dein#add('Shougo/deol.nvim')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable
