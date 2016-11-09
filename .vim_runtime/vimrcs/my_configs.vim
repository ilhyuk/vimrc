set gfn=Fantasque_Sans_Mono:h10:cANSI:qDRAFT
"set gfn=Fira_Mono:h10:cANSI:qDRAFT
colorscheme gruvbox
set background=dark    " Setting dark mode
"set background=light   " Setting light mode
"AirlineTheme papercolor

if has ('win32')
"    echo "Starting in Windows mode"
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif


"nmap cp :let @* = expand("%")
"noremap <silent> <F4>:let @* = expand("%")<CR>
"nmap cp :let @* = expand("%:p")<cr>

" Mnemonic: Copy File path
nnor <F2> :let @*=expand('%:p')<CR>
"nnor <S-F2> :let @"=expand("%:p")<CR>    " Mnemonic: Yank File path
"nnor ,fn :let @"=expand("%")<CR>      " Mnemonic: yank File Name
inoremap jk <ESC>
"copy Date to Windows Clipboard
"map <F3> :let @*=strftime('%c')<CR>   
"insert Date from insert mode
map! <F3> <C-R>=strftime('%c')<CR>

"map ,cd to print directory after changing
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Windows navigation with hjkl 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

set nocompatible
syntax enable
filetype plugin on
set relativenumber
set number

augroup reload_my_configs " {
    autocmd!
    "autocmd BufWritePost $MYVIMRC source $MYVIMRC
    autocmd BufWritePost ~/.vim_runtime/vimrcs/my_configs.vim source ~/.vim_runtime/vimrcs/my_configs.vim
    "changes the window-local current directory to be the same as the directory of the current file
    autocmd BufEnter * silent! lcd %:p:h
augroup END " }

