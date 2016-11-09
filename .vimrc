" git clone https://github.com/amix/vimrc to get ultimate plugins
set runtimepath+=~/.vim_runtime
"set rtp+=%USERPROFILE%/vimfiles/bundle/Vundle.vim/
"
filetype plugin indent on    " required
"call vundle#begin('%USERPROFILE%/vimfiles/bundle/')
"" All of your Plugins must be added before the following line
"Plugin 'morhetz/gruvbox'
"Plugin 'rking/ag.vim'
""Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"
"call vundle#end()            " required

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/vimrcs/my_configs.vim
catch
endtry
