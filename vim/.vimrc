"remappings meant for the finnish keyboard! also just some random notes about vim.
"https://www.linux.fi/wiki/Vim
"https://stackoverflow.com/questions/4392705/programmers-vim-setup-for-finnish-swedish-or-other-non-us-keyboard-layout
"http://skrolli.fi/2015.3.botti.pdf (has an article in finnish)

" vim action: verb + noun (eg. d w / delete word, 2j 
"operator (d/c/v/...) + motion () + text objects (w/j/)
"repeat cmd .
"indent <  > 
"change: c

" text
"i/inner + w/word  "/quotes  p/paragraph
"as = a sentence
"s - surrounding

"siw( = surround inner word w/ ( )
"di{ = delete inside brackets

set nocompatible
set encoding=utf-8
syntax enable
set number "show line numbers
set relativenumber
colors zenicolas
filetype plugin on

"show whitespace ·┊
"eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:┊\ 
set list

set tabstop=3 "tab width
set softtabstop=0 noexpandtab "use tabs no spaces
set autoindent "copy indent from prev line
"set shiftwidth=4  "indent width

"open file at line 32: vim +32 file.c
"open file at string xyz: vim +/xyz file.c
"exit without save: :q!
"reload file: :e  (add ! if file edited)
"search/replace: :s/hello/bye (confirm, add /c, also /g??, whole file :%s/huono/hyvä/g)

" movement
"character: h j k l
"word: w b
"sentence: ( )
"paragraph: { }
"line: 0 + (to line 5: 5G/5gg)
"buffer: gg G

" multiselect stuff https://github.com/mg979/vim-visual-multi
"select word: c-n
"create cursors: c-up/down
"select char: shift+arrows
"move bw occurrences: n/N
"select cursor: [/]
"skip current, get next: q
"remove: Q
"start insert mode: i/a/I/A

" command mode
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
"repeat search n
"toggle upper/lowercase: ~

" file tree https://shapeshed.com/vim-netrw/, http://vimcasts.org/episodes/the-file-explorer/
"open: :Explore/:E (:Vexplore/:Vex vertical split; :Sexplore/:Sex horiz split )
"toggle views: i
"toggle banner I
"toggle sort s
"go up dir: -
"create new file %
"create new dir d
"delete file/dir: D
"rename file/dir: R
let g:netrw_liststyle = 3 "default list style
let g:netrw_banner = 0 "disable banner by default
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25 "width
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Sex
"augroup END
"see current path: set path?
"jump to file: :find filename.c, can search with "*.c" also
set wildmenu
set path+=**
"set wildignore += **/folder/** 

"read some file template and move cursor
"nnoremap ,abeon :-1read $HOME/.vim/.abeon.h<CR>3jwf>a


" tabs>windows>buffers
" windows
"open new: :vnew 
" buffers
"list: :ls
"open Nth: :b Nth / :bn(ext) / :bp(revious)
"close: :bd/bdelete :bw/bwipe, :xxx,yyybdelete
"c-6 prev buffer

" visual mode: v (paint/copy/paste text)
"cut/remove: d
"copy: y
"paste: p

map å {
map Å }
inoremap å {
inoremap Å }
map ä (
map Ä )
inoremap ä (
inoremap Ä )
map ö [
map Ö ]
inoremap ö [
inoremap Ö ]

map = \

"buffer navigation with öä
"map <leader>ö :bnext<cr>
"map <leader>ä :bprev<cr>

"goto end of line
map + $
"search with <space> (repeat with n)
map <space> /
map § ^

"switch between windows with Ctrl+hjkl
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l 

"toggle paste mode with pp
map <leader>pp :setlocal paste!<cr> 



" plugins https://github.com/junegunn/vim-plug/wiki
"install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

	"https://github.com/mg979/vim-visual-multi
	Plug 'mg979/vim-visual-multi', {'branch': 'master'} 

call plug#end()


"run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif




" random notes
"nmap, nnoremap, nunmap  -  Normal mode
"imap, inoremap, iunmap  -  Insert and Replace mode
"vmap, vnoremap, vunmap  -  Visual and Select mode
"xmap, xnoremap, xunmap  -  Visual mode
"smap, snoremap, sunmap  -  Select mode
"cmap, cnoremap, cunmap  -  Command-line mode
"omap, onoremap, ounmap  -  Operator pending mode




" vim-org-mode
"toggle heading: zo/zc
"new heading: =hN/hn
"mark done: =cc
"jump to list item: 
"https://github.com/jceb/vim-orgmode
"Plug 'jceb/vim-orgmode'
"Plug 'tpope/vim-speeddating' "increment dates with c-a/x