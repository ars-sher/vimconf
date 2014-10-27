"to get this, do
"cd
"git clone git@github.com:ars-sher/vimconf.git .vim
"echo "runtime vimrc" > .vimrc

filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

"visualizes tab as 4 spaces
set tabstop=4
"> shifts 2 spaces (maybe mixed with tabs (!!!))
set shiftwidth=2  
"in i regime, replaces tabs with spaces, wow
set expandtab
"copies indent from previous line
set autoindent

"hightligs tralining spaces with red
"first line creates CLosingSpace class with red color
"second matches it agains RE. \s - spaces/tabs, + - many of them, $ - end of string
"and yes, it doesn't work at all...
highlight ClosingSpace ctermbg=red
match ClosingSpace /\s\+$/

set cin

set number
set showcmd "current typing command
set ruler
"DoMatchParen highlight matching parenthesis
""set showmatch

map <F9> :source ~/.vimrc <CR>
map <C-1> 1gt
map <C-2> 2gt

colorscheme darkblue

"Uncomment below to prevent 'tilde backup files' (eg. myfile.txt~) from being
"created
set nobackup
"
""Uncomment below to cause 'tilde backup files' to be created in a different dir so as not to clutter up the current file's directory (probably a better idea than disabling them altogether)
"set backupdir=~/temp
"
"" Uncomment below to disable 'swap files' (eg. .myfile.txt.swp) from being created
set noswapfile


":%s/\t/<spaces, as many as needed>/g - replaces tabs to spaces
" % means to apply command to every string
" s - substitute: :s/what/towhat; after / you can write options - g means to substitute all in string -
" by default only the first value is substituted
" c - ask before every replace
" :2,5s/хуй/пизда - replace in string 2 to 5 hui to pizda

" copy smth: "*y

