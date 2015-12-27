""""""""""""""""""""""""""""""
" 各種オプションの設定
" """"""""""""""""""""""""""""""
" タグファイルの指定(でもタグジャンプは使ったことがない)
set tags=~/.tags
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" コマンドラインに使われる画面上の行数
set cmdheight=2
" エディタウィンドウの末尾から2行目にステータスラインを常時表示させる
set laststatus=2

" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" バックアップディレクトリの指定(でもバックアップは使ってない)
set backupdir=$HOME/.vimbackup

" バッファで開いているファイルのディレクトリでエクスクローラを開始する(でもエクスプローラって使ってない)
set browsedir=buffer
" 小文字のみで検索したときに大文字小文字を無視する
set smartcase
" 検索結果をハイライト表示する
set hlsearch
" 暗い背景色に合わせた配色にする
set background=dark
" タブ入力を複数の空白入力に置き換える
set expandtab
" 検索ワードの最初の文字を入力した時点で検索を開始する
set incsearch
" 保存されていないファイルがあるときでも別のファイルを開けるようにする
set hidden
" 不可視文字を表示する
set list
" タブと行の続きを可視化する
"set listchars=tab:>\ ,extends:<
" 行番号を表示する
set number
" 対応する括弧やブレースを表示する
set showmatch
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
" 構文毎に文字色を変化させる
syntax on
" カラースキーマの指定
colorscheme desert
" 行番号の色
highlight LineNr ctermfg=darkyellow

"タブの幅
"set tabstop=2
"各行に番号をつける
set number
"タブ,空白,改行を可視化する
set list
"タブ,空白,改行を可視化する
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"Ctrl-jをescにする
imap <C-j> <esc>

"---------------------------
" Start Neobundle Settings.
"---------------------------
filetype off


if has('vim_starting')
	set nocompatible               " be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif
"Required
call neobundle#begin(expand('~/.vim/bundle/'))

"Let NeoBundle manage NeoBundle
"Required
NeoBundle 'Shougo/neobundle.vim'

"My Bundles here
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on     " required!
syntax on
NeoBundleCheck
"-------------------------
" End Neobundle Settings.
"-------------------------
"
"-------------------------
"short cut
"-------------------------
"NERTTree shortcut
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"-------------------------
"ペーストするときにインデントさせない
"http://mba-hack.blogspot.jp/2013/01/vimc-v.html
imap <F5> <nop>
set pastetoggle=<F5>
