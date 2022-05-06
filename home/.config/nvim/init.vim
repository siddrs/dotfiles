"
"      Neovim config
"
"      github.com/Mespyr
"
source $HOME/.config/nvim/settings/settings.lua
source $HOME/.config/nvim/settings/fold.vim
source $HOME/.config/nvim/plugins/init.vim
source $HOME/.config/nvim/settings/colors.vim
source $HOME/.config/nvim/settings/keybindings.vim
source $HOME/.config/nvim/lazyload/init.lua

autocmd BufRead,BufNewFile *.ach setlocal syntax=ruby tabstop=2
" autocmd BufLeave           *.ach set tabstop=4
" autocmd Filetype ach setlocal tabstop=2
