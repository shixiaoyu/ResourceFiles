"######## README BEGIN #########
" a bare minimum vimrc for me to copy over to random boxes 
" 
" 1. really the the vim_rumtime, install it here: https://github.com/amix/vimrc, check the "install plugin" section 
"   1.1 I really like NerdTree, which is previously installec by vimrc runtime 
"   1.2 after install vimrc, copy this file to overwrite
" 2. Pick some from https://vimawesome.com/, youcompleteme is useful
" ######### REAME END ##########

set runtimepath+=~/.vim_runtime
" Nerd tree config
" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
" automatically close vim if nerdtree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set number
set ignorecase
set smartcase

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

let g:jedi#auto_initialization = 1

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

