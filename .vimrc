"remappings meant for the finnish keyboard! also just some random notes about vim.
"https://www.linux.fi/wiki/Vim
"https://stackoverflow.com/questions/4392705/programmers-vim-setup-for-finnish-swedish-or-other-non-us-keyboard-layout
"http://skrolli.fi/2015.3.botti.pdf (has an article in finnish)

syntax enable
set number "show line numbers

"open file at line 32: vim +32 file.c
"open file at string xyz: vim +/xyz file.c
"exit without save: :q!
"reload file: :e  (add ! if file edited)
"search/replace: :s/hello/bye (confirm, add /c, also /g??, whole file :%s/huono/hyvä/g)

"movement
"character: h j k l
"word: w b
"sentence: ( )
"paragraph: { }
"line: 0 + (to line 5: 5G/5gg)
"buffer: gg G

"command mode
"undo: u
"redo: CTRL+r
"remove current character: x
"replace current character: r
"remove current line: dd
"remove x cursor movements: d (eg. remove next 3 letters: 3dl, 3 meaning how many times to repeat, l is arrow to right, works for hjkl; next 3 words: d3w)
"add line below and into insert mode: o (O to above)
"jump between closures: % (eg. from currently selected "{" to next "}")
"start replacing text (insert-mode): R
"start recording macro: q + register where to save it, then macro, end recording with q
"repeat macro: @a
"repeat macro 100 times: 100@a

"visual mode: v (paint/copy/paste text)
"cut/remove: d
"copy: y
"paste: p

"toggle upper/lowercase with §
map § ~

"to end of line with +
map + $

"search with <space>
map <space> /

"switch between windows with Ctrl+hjkl
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l 

"disable arrow keyz
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"buffer navigation with öä
map <leader>ö :bNext<cr>
map <leader>ä :bprev<cr>

"toggle paste mode with pp
map <leader>pp :setlocal paste!<cr> 

map å ^

"replace insert mode characters
inoremap å {
inoremap Å }
