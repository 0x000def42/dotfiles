call plug#begin('~/.vim/plugged')

Plug 'xolox/vim-misc'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive' "git differences, other git intergations"
Plug 'airblade/vim-gitgutter' "deleteon and insertion marks"
Plug 'kien/ctrlp.vim' 
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-notes'
Plug 'unkiwii/vim-nerdtree-sync'
"Plug 'leafOfTree/vim-svelte-plugin'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

set encoding=utf-8
set nocompatible
colorscheme gruvbox
set background=dark
set number
set tabstop=2
set hlsearch
set incsearch
let g:vim_svelte_plugin_load_full_syntax = 1
let g:prettier_exec_cmd = "prettier --plugin-search-dir=."
let g:nerdtree_sync_cursorline = 1
let g:prettier#config#parser = 'babylon'
let g:mapleader=','
"Mappings"
map <C-n> :NERDTreeToggle<CR>
nnoremap <cr> :noh<CR><CR>:<backspace>
map <Leader> <Plug>(easymotion-prefix)
syntax on
filetype plugin on

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat = 1
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>
map <leader>r :NERDTreeFind<cr>

function! WinMove(key)
				let t:curwin = winnr()
				exec "wincmd ".a:key
				if(t:curwin == winnr())
								if(match(a:key, '[jk]'))
												wincmd v
								else
												wincmd s
								endif
								exec "wincmd ".a:key
				endif
endfunction

"Notes"
let g:notes_directories = ['~/.notes']
let g:notes_suffix = '.md'
let g:notes_title_sync = 'change_title'


