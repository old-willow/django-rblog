let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <Down> <Nop>
inoremap <Up> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>
nnoremap <silent>  :CtrlP
nmap o <Plug>ZoomWin
map ,t <Plug>TaskList
nmap <silent> ,n <Plug>MarkClear
vmap <silent> ,r <Plug>MarkRegex
nmap <silent> ,r <Plug>MarkRegex
vmap <silent> ,m <Plug>MarkSet
nmap <silent> ,m <Plug>MarkSet
vnoremap ,g :call GrepOperator(visualmode())
nnoremap ,g :set operatorfunc=GrepOperatorg@
nnoremap ,  i <Right>a <Left>
vnoremap ,ss `>a"`<i"
vnoremap ,s `>a'`<i'
nnoremap ,ll I"A"
nnoremap ,l I'A'
nnoremap ,ww ea"bi"
nnoremap ,w ea'bi'
nnoremap ,sv :source $MYVIMRC
nnoremap ,rc :vsp $MYVIMRC
nnoremap ,= O<Down>o<Up>
nnoremap ,_ dd<Up>P
nnoremap ,- ddp
vnoremap < <gv
vnoremap > >gv
nnoremap H :tabprevious
nnoremap L :tabnext
vmap [% [%m'gv``
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap gx <Plug>NetrwBrowseX
nnoremap sa ggVG
nnoremap ttd :tabclose
nnoremap ttn :tabnew
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <silent> <Plug>SIG_PurgeMarkers :call signature#PurgeMarkers()
nnoremap <silent> <Plug>SIG_PrevMarkerByType :call signature#GotoMarker("prev")
nnoremap <silent> <Plug>SIG_NextMarkerByType :call signature#GotoMarker("next")
nnoremap <silent> <Plug>SIG_PrevLineByPos :call signature#GotoMark("pos", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByPos :call signature#GotoMark("pos", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByPos :call signature#GotoMark("pos", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByPos :call signature#GotoMark("pos", "next", "spot")
nnoremap <silent> <Plug>SIG_PrevLineByAlpha :call signature#GotoMark("alpha", "prev", "line")
nnoremap <silent> <Plug>SIG_NextLineByAlpha :call signature#GotoMark("alpha", "next", "line")
nnoremap <silent> <Plug>SIG_PrevSpotByAlpha :call signature#GotoMark("alpha", "prev", "spot")
nnoremap <silent> <Plug>SIG_NextSpotByAlpha :call signature#GotoMark("alpha", "next", "spot")
nnoremap <silent> <Plug>SIG_PurgeMarks :call signature#PurgeMarks()
nnoremap <silent> <Plug>SIG_PlaceNextMark :call signature#ToggleMark(",")
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
vnoremap <Right> <Nop>
vnoremap <Left> <Nop>
nnoremap <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
nnoremap <F4> :TlistToggle
inoremap  <Nop>
inoremap "" ""<Left>
inoremap # X#
inoremap '' ''<Left>
inoremap ( ()O
inoremap (( ()<Left>
inoremap /* /**/<Left><Left> * <Up><Right><Right>
inoremap /** /*  */3<Left>a
inoremap <in <input type="" />3hi
inoremap <i <i></i>3hi
inoremap <u <u></u><Up>
inoremap <d <div></div>5hi
inoremap <p <p></p>3hi
inoremap <im <img src="" />3hi
inoremap </ </><Left>
inoremap << <><Left>
inoremap [ []O
inoremap [[ []<Left>
inoremap kj 
inoremap { {}O
inoremap {{ {}<Left>
iabbr kr Kolozsi Róbert
iabbr k@ <robert.kolozsi@gmail.com>
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set backup
set backupdir=./.backup,~/tmp
set clipboard=unnamed
set completeopt=longest,menuone
set directory=./.swap,~/tmp
set expandtab
set fileencodings=utf-8,ucs-bom,latin2
set fillchars=vert:|,fold:~,diff:-
set foldlevelstart=0
set formatoptions=cq
set guifont=courier_new:h10
set helplang=en
set hidden
set history=1000
set hlsearch
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:→\ ,eol:⏎,extends:>,precedes:<
set matchtime=3
set modelines=1
set ruler
set runtimepath=~/.vim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/powerline,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/vim-css3-syntax,~/.vim/bundle/vim-javascript,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-signature,~/opt/vim/share/vim/vimfiles,~/opt/vim/share/vim/vim74,~/opt/vim/share/vim/vimfiles/after,~/.vim/bundle/vim-css3-syntax/after,~/.vim/after,~/.vim/bundle/powerline/powerline/bindings/vim
set scrolloff=3
set shell=/bin/bash\ --login
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set softtabstop=4
set splitbelow
set splitright
set statusline=%!pyeval('powerline.new_window()')
set synmaxcol=300
set tabstop=4
set termencoding=utf-8
set textwidth=120
set title
set undodir=~/.vim/undodir
set undofile
set undoreload=1000
set wildignore=*.pyc,*_build/*,*/coverage/*
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/python-projects/rblog
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 rblog/settings.py
badd +0 blog/models.py
badd +10 blog/admin.py
badd +0 rblog/urls.py
badd +0 blog/urls.py
badd +0 blog/views.py
badd +0 blog/templates/blog/blog_list.html
args rblog/settings.py
edit rblog/settings.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(1)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 38 - ((36 * winheight(0) + 34) / 69)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
38
normal! 05|
wincmd w
argglobal
edit rblog/urls.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(4)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 8 - ((7 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
edit blog/urls.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(5)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 7 - ((6 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 050|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
tabedit blog/models.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(2)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 14 - ((12 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 09|
wincmd w
argglobal
edit blog/models.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=1
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(9)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 112 - ((30 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
112
normal! 0
wincmd w
argglobal
edit blog/admin.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(3)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
8
normal! zo
12
normal! zo
let s:l = 14 - ((13 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
argglobal
edit blog/views.py
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
map <buffer> E :w:!/usr/bin/env python % 
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nnoremap <buffer> \c I#
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
map <buffer> gd /def 
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
nnoremap <buffer> Æ :call ToggleFold()
nnoremap <buffer> æ za
inoremap <buffer> iff if  :<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=!^F,o,O,<:>,0),0],0},=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=syntaxcomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(7)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=79
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
10
normal! zo
17
normal! zo
let s:l = 20 - ((19 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 071|
wincmd w
exe '1resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe '2resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
exe '3resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 3resize ' . ((&columns * 119 + 119) / 239)
exe '4resize ' . ((&lines * 34 + 36) / 72)
exe 'vert 4resize ' . ((&columns * 119 + 119) / 239)
tabedit blog/templates/blog/blog_list.html
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> '[ <Plug>SIG_PrevLineByAlpha
nmap <buffer> '] <Plug>SIG_NextLineByAlpha
nmap <buffer> [- <Plug>SIG_PrevMarkerByType
nmap <buffer> [` <Plug>SIG_PrevSpotByPos
nmap <buffer> [' <Plug>SIG_PrevLineByPos
nmap <buffer> ]- <Plug>SIG_NextMarkerByType
nmap <buffer> ]` <Plug>SIG_NextSpotByPos
nmap <buffer> ]' <Plug>SIG_NextLineByPos
nmap <buffer> `[ <Plug>SIG_PrevSpotByAlpha
nmap <buffer> `] <Plug>SIG_NextSpotByAlpha
nmap <buffer> m<BS> <Plug>SIG_PurgeMarkers
nmap <buffer> m  <Plug>SIG_PurgeMarks
nmap <buffer> m, <Plug>SIG_PlaceNextMark
nnoremap <buffer> <silent> m( :call signature#RemoveMarker("(")
nnoremap <buffer> <silent> m9 :call signature#ToggleMarker("(")
nnoremap <buffer> <silent> m* :call signature#RemoveMarker("*")
nnoremap <buffer> <silent> m8 :call signature#ToggleMarker("*")
nnoremap <buffer> <silent> m& :call signature#RemoveMarker("&")
nnoremap <buffer> <silent> m7 :call signature#ToggleMarker("&")
nnoremap <buffer> <silent> m^ :call signature#RemoveMarker("^")
nnoremap <buffer> <silent> m6 :call signature#ToggleMarker("^")
nnoremap <buffer> <silent> m% :call signature#RemoveMarker("%")
nnoremap <buffer> <silent> m5 :call signature#ToggleMarker("%")
nnoremap <buffer> <silent> m$ :call signature#RemoveMarker("$")
nnoremap <buffer> <silent> m4 :call signature#ToggleMarker("$")
nnoremap <buffer> <silent> m# :call signature#RemoveMarker("#")
nnoremap <buffer> <silent> m3 :call signature#ToggleMarker("#")
nnoremap <buffer> <silent> m@ :call signature#RemoveMarker("@")
nnoremap <buffer> <silent> m2 :call signature#ToggleMarker("@")
nnoremap <buffer> <silent> m! :call signature#RemoveMarker("!")
nnoremap <buffer> <silent> m1 :call signature#ToggleMarker("!")
nnoremap <buffer> <silent> m) :call signature#RemoveMarker(")")
nnoremap <buffer> <silent> m0 :call signature#ToggleMarker(")")
nnoremap <buffer> <silent> mZ :call signature#ToggleMark("Z")
nnoremap <buffer> <silent> mY :call signature#ToggleMark("Y")
nnoremap <buffer> <silent> mX :call signature#ToggleMark("X")
nnoremap <buffer> <silent> mW :call signature#ToggleMark("W")
nnoremap <buffer> <silent> mV :call signature#ToggleMark("V")
nnoremap <buffer> <silent> mU :call signature#ToggleMark("U")
nnoremap <buffer> <silent> mT :call signature#ToggleMark("T")
nnoremap <buffer> <silent> mS :call signature#ToggleMark("S")
nnoremap <buffer> <silent> mR :call signature#ToggleMark("R")
nnoremap <buffer> <silent> mQ :call signature#ToggleMark("Q")
nnoremap <buffer> <silent> mP :call signature#ToggleMark("P")
nnoremap <buffer> <silent> mO :call signature#ToggleMark("O")
nnoremap <buffer> <silent> mN :call signature#ToggleMark("N")
nnoremap <buffer> <silent> mM :call signature#ToggleMark("M")
nnoremap <buffer> <silent> mL :call signature#ToggleMark("L")
nnoremap <buffer> <silent> mK :call signature#ToggleMark("K")
nnoremap <buffer> <silent> mJ :call signature#ToggleMark("J")
nnoremap <buffer> <silent> mI :call signature#ToggleMark("I")
nnoremap <buffer> <silent> mH :call signature#ToggleMark("H")
nnoremap <buffer> <silent> mG :call signature#ToggleMark("G")
nnoremap <buffer> <silent> mF :call signature#ToggleMark("F")
nnoremap <buffer> <silent> mE :call signature#ToggleMark("E")
nnoremap <buffer> <silent> mD :call signature#ToggleMark("D")
nnoremap <buffer> <silent> mC :call signature#ToggleMark("C")
nnoremap <buffer> <silent> mB :call signature#ToggleMark("B")
nnoremap <buffer> <silent> mA :call signature#ToggleMark("A")
nnoremap <buffer> <silent> mz :call signature#ToggleMark("z")
nnoremap <buffer> <silent> my :call signature#ToggleMark("y")
nnoremap <buffer> <silent> mx :call signature#ToggleMark("x")
nnoremap <buffer> <silent> mw :call signature#ToggleMark("w")
nnoremap <buffer> <silent> mv :call signature#ToggleMark("v")
nnoremap <buffer> <silent> mu :call signature#ToggleMark("u")
nnoremap <buffer> <silent> mt :call signature#ToggleMark("t")
nnoremap <buffer> <silent> ms :call signature#ToggleMark("s")
nnoremap <buffer> <silent> mr :call signature#ToggleMark("r")
nnoremap <buffer> <silent> mq :call signature#ToggleMark("q")
nnoremap <buffer> <silent> mp :call signature#ToggleMark("p")
nnoremap <buffer> <silent> mo :call signature#ToggleMark("o")
nnoremap <buffer> <silent> mn :call signature#ToggleMark("n")
nnoremap <buffer> <silent> mm :call signature#ToggleMark("m")
nnoremap <buffer> <silent> ml :call signature#ToggleMark("l")
nnoremap <buffer> <silent> mk :call signature#ToggleMark("k")
nnoremap <buffer> <silent> mj :call signature#ToggleMark("j")
nnoremap <buffer> <silent> mi :call signature#ToggleMark("i")
nnoremap <buffer> <silent> mh :call signature#ToggleMark("h")
nnoremap <buffer> <silent> mg :call signature#ToggleMark("g")
nnoremap <buffer> <silent> mf :call signature#ToggleMark("f")
nnoremap <buffer> <silent> me :call signature#ToggleMark("e")
nnoremap <buffer> <silent> md :call signature#ToggleMark("d")
nnoremap <buffer> <silent> mc :call signature#ToggleMark("c")
nnoremap <buffer> <silent> mb :call signature#ToggleMark("b")
nnoremap <buffer> <silent> ma :call signature#ToggleMark("a")
inoremap <buffer> %ec {% endcomment %}o
inoremap <buffer> %c {% comment %}o
inoremap <buffer> %ef {% endfor %}o
inoremap <buffer> %f {% for   in %}6hi
inoremap <buffer> %e {% endif %}o
inoremap <buffer> %l {% else %}
inoremap <buffer> %i {% if   %}3hi
inoremap <buffer> %% {%  %}2hi
inoremap <buffer> }} {{  }}2hi
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+1
setlocal colorcolumn=+1
setlocal comments=s:<!--,m:\ \ \ \ ,e:-->
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'htmldjango'
setlocal filetype=htmldjango
endif
set foldcolumn=4
setlocal foldcolumn=4
setlocal foldenable
set foldexpr=PythonFoldExpr(v:lnum)
setlocal foldexpr=PythonFoldExpr(v:lnum)
setlocal foldignore=#
set foldlevel=2
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=expr
setlocal foldmethod=expr
setlocal foldminlines=1
set foldnestmax=10
setlocal foldnestmax=10
set foldtext=PythonFoldText()
setlocal foldtext=PythonFoldText()
setlocal formatexpr=
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=HtmlIndent()
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,$
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!pyeval('powerline.statusline(8)')
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=300
if &syntax != 'htmldjango'
setlocal syntax=htmldjango
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=120
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
let s:l = 10 - ((9 * winheight(0) + 34) / 69)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 022|
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
