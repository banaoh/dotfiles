"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
" ここにdeinをcloneする
set runtimepath+=/Users/banaoh/dotfiles/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/dotfiles/.vim/bundle')
  call dein#begin('~/dotfiles/.vim/bundle')
  call dein#add('Shougo/dein.vim')
 
  " texの設定   
  call dein#add('lervag/vimtex')
  call dein#add('thinca/vim-quickrun')

  " カラースキーマ:
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('dracula/vim')
  call dein#add('sjl/badwolf')

  " コードの補完
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')

  "ディレクトリ構造を可視化する
  call dein#add('scrooloose/nerdtree')

  "vimのステータスバーの設定   
  call dein#add('Lokaltog/vim-powerline')
  
  "railsを簡単に使うことができる
  call dein#add('tpope/vim-rails')

  " ーーーーーーーーー 編集系ーーーーーーーーーーーーーーーーーー
  " コメントアウトを簡単にしてくれる(comment + ハイフン)
  call dein#add('tomtom/tcomment_vim')
  " yss( でシングルクォートを文章に挿入
  " ds(でシングルクォートを削除
  call dein#add('tpope/vim-surround')

  " あいまい検索
  call dein#add('ctrlpvim/ctrlp.vim')

  " CtrlPの拡張プラグイン. 関数検索
  call dein#add('tacahiroy/ctrlp-funky')

  " CtrlPの拡張プラグイン. コマンド履歴検索
  call dein#add('suy/vim-ctrlp-commandline')

  "endを自動で入れてくれる
  call dein#add('tpope/vim-endwise')

  "インデントの可視化を行う
  " call dein#add('nathanaelkane/vim-indent-guides') : 使いにくい
  call dein#add('Yggdroot/indentLine')

  " インサートモード、ノーマルモードの色を反転
  call dein#add('cohama/vim-insert-linenr')

  " カーソルの可視化
  call dein#add('terryma/vim-multiple-cursors')

  " 編集されたら左側に+ -をつける
  " なぜか読み込まれないので明示的に記述
  call dein#add('banaoh/changed.vim')
  source ~/dotfiles/.vim/bundle/repos/github.com/banaoh/changed.vim/changed-vim/changed.vim
  " ーーーーーーーーーーーーーーーーーーーーーーー
  
  "マークダウン記法
  " tabでインデント、shift+tabでの逆インデント
  call dein#add('violetyk/iikanji-markdown.vim')
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('godlygeek/tabular')
  call dein#add('plasticboy/vim-markdown')

  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

"--------------------
""" vim settings
"--------------------
" ------------------------------------
" colorscheme
" ------------------------------------
syntax on
color dracula

""新しい行のインデントを現在行と同じにする
set autoindent
"インデントの可視化を有効化
"インデントの可視化を無効化するもの
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:vim_markdown_new_list_item_indent = 2

"ツリー表示
" autocmd VimEnter * execute 'NERDTree' | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" デフォルトでツリーを表示させる
let g:nerdtree_tabs_open_on_console_startup=1


"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/dotfiles/.vim/backup

"クリップボードをWindowsと連携する
set clipboard=unnamed

"マウス操作をオンにする
set mouse=a
set cursorline " カーソルラインをハイライト

"vi互換をオフする
set nocompatible

""スワップファイル用のディレクトリを指定する
set directory=$HOME/dotfiles/.vim/backup

set virtualedit=onemore
"deleteキーの有効化
set backspace=2

""タブ幅の設定
set expandtab
set tabstop=2
set shiftwidth=2

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

""インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

" 自動的に閉じ括弧を入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

""閉括弧が入力された時、対応する括弧を強調する
set showmatch

"コマンドを表示
set showcmd


" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh


"----キーマップを割り当て-----

" ctrl+uで半分上のページへ行く
" ctrl+uで半分上のページへ行く

" ctrl+=:大きさを均等にする
" ctrl+w:次に移動
" ttで最大化
" tuで最大化解除
nnoremap s <Nop>
nnoremap ss :<C-u>vs<CR>
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap tt <C-w>_<C-w><Bar>
nnoremap tu <C-w>=
nnoremap <C-v> v<C-n>


" 検索ハイライトを利用
" 検索結果のハイライトをEsc連打でクリアする
" * カーソル位置の単語を検索
set hlsearch

nnoremap <ESC><ESC> :nohlsearch<CR>

let mapleader = "<Space>"
nnoremap w :w
nnoremap q :q

inoremap <silent> jj <ESC>
imap <C-u> <BS>
imap <C-i> <Del>
nnoremap <C-f> /
nnoremap <C-g> <ESC>:call ScpUpload()<CR>

:imap <c-h> <Left>
:imap <c-j> <Down>
:imap <c-k> <Up>
:imap <c-l> <Right>
map <C-n> :NERDTreeToggle<CR>
"-------------------


" http://www.kevinli.co/posts/2017-01-19-multiple-cursors-in-500-bytes-of-vimscript/
let g:mc = "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>"

nnoremap cn *``cgn
nnoremap cN *``cgN

vnoremap <expr> cn g:mc . "``cgn"
vnoremap <expr> cN g:mc . "``cgN"

function! SetupCR()
  nnoremap <Enter> :nnoremap <lt>Enter> n@z<CR>q:<C-u>let @z=strpart(@z,0,strlen(@z)-1)<CR>n@z
endfunction

nnoremap cq :call SetupCR()<CR>*``qz
nnoremap cQ :call SetupCR()<CR>#``qz

vnoremap <expr> cq ":\<C-u>call SetupCR()\<CR>" . "gv" . g:mc . "``qz"
vnoremap <expr> cQ ":\<C-u>call SetupCR()\<CR>" . "gv" . substitute(g:mc, '/', '?', 'g') . "``qz"


" ウインドウのタイトルバーにファイルのパス情報等を表示する
set title

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" vimgrepやgrep した際に、cwindowしてしまう
autocmd QuickFixCmdPost *grep* cwindow

" インデントの可視化
" indentLine
" let g:indentLine_color_term = 111
" let g:indentLine_color_gui = '#708090'
" let g:indentLine_char = '¦' "use ¦, ┆ or │

"----------------------------------------------------------
" CtrlPの設定
"----------------------------------------------------------
let g:ctrlp_match_window = 'order:ttb,min:20,max:20,results:100' " マッチウインドウの設定. 「下部に表示, 大きさ20行で固定, 検索結果100件」
let g:ctrlp_show_hidden = 1 " .(ドット)から始まるファイルも検索対象にする
let g:ctrlp_types = ['fil'] "ファイル検索のみ使用
let g:ctrlp_extensions = ['funky', 'commandline'] " CtrlPの拡張として「funky」と「commandline」を使用

" CtrlPCommandLineの有効化
command! CtrlPCommandLine call ctrlp#init(ctrlp#commandline#id())

" CtrlPFunkyの有効化
let g:ctrlp_funky_matchtype = 'path' 


" エスケープシーケンスの表示 tab eol
set list
set listchars=tab:\|\ 
hi SpecialKey guifg=#333333

" 全角スペースの表示
function! ZenkakuSpace()
highlight ZenkakuSpace cterm=reverse ctermfg=DarkGray gui=reverse guifg=DarkGray

endfunction
if has('syntax')
  augroup ZenkakuSpace
  autocmd!
  "ZenkakuSpace をカラーファイルで設定するなら、 
  "次の行をコメントアウト
  autocmd ColorScheme * call ZenkakuSpace()
  autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
 
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" ------------------------
"  unite vimの設定

"インサートモードで開始
let g:unite_enable_start_insert=1
"ヒストリー/ヤンク機能を有効化
let g:unite_source_history_yank_enable =1
"prefix keyの設定
nmap <Space> [unite]

"スペースキーとaキーでカレントディレクトリを表示
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
"スペースキーとrキーでレジストリを表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
"スペースキーとtキーでタブを表示
nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>
"スペースキーとhキーでヒストリ/ヤンクを表示
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
"スペースキーとoキーでoutline
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
"スペースキーとENTERキーでfile_rec:!
nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>
"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
    " ESCでuniteを終了
    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}
" ------------------------------------------

" ============================================="
" ステータスラインの設定
"  ===========================================
" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[encode=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[現在位置=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" Gitブランチを表示
let &statusline .= '%{exists("b:git_branch") &&  b:git_branch != "" ? "[Git:" . b:git_branch . "]" : ""}'  " Gitのブランチ名を表示

autocmd! BufEnter * let b:git_branch = GetGitBranchName()

function! GetGitBranchName()
  let dir = expand('%:p:h')
	 let branch = ""
	 let r = system('cd ' . dir . ' && git symbolic-ref HEAD 2> /dev/null')
	 if r != ""
		let branch = split(r,"/")[-1][:-2]
	endif
	return branch
endfunction

" 自分用 snippet ファイルの場所 (任意のパス)
let g:neosnippet#snippets_directory='~/dotfiles/.vim/bundle/neosnippet-snippets/snippets/,~/.vim/snippets'

" ----------------------------------------------
"  vimコマンドのエイリアス
" ----------------------------------------------
" :command Tr NERDTree

" ----------------------------------------------
"  vim-powerlineの設定
" ----------------------------------------------
set guifont=Inconsolata_for_Powerline:h11:cANSI

let g:Powerline_symbols='fancy'
call Pl#Hi#Allocate({
  \ 'black'          : 16,
  \ 'white'          : 231,
  \
  \ 'darkestgreen'   : 22,
  \ 'darkgreen'      : 28,
  \
  \ 'darkestcyan'    : 21,
  \ 'mediumcyan'     : 117,
  \
  \ 'darkestblue'    : 24,
  \ 'darkblue'       : 31,
  \
  \ 'darkestred'     : 52,
  \ 'darkred'        : 88,
  \ 'mediumred'      : 124,
  \ 'brightred'      : 160,
  \ 'brightestred'   : 196,
  \
  \ 'darkestyellow'  : 59,
  \ 'darkyellow'     : 100,
  \ 'darkestpurple'  : 57,
  \ 'mediumpurple'   : 98,
  \ 'brightpurple'   : 189,
  \
  \ 'brightorange'   : 208,
  \ 'brightestorange': 214,
  \
  \ 'gray0'          : 233,
  \ 'gray1'          : 235,
  \ 'gray2'          : 236,
  \ 'gray3'          : 239,
  \ 'gray4'          : 240,
  \ 'gray5'          : 241,
  \ 'gray6'          : 244,
  \ 'gray7'          : 245,
  \ 'gray8'          : 247,
  \ 'gray9'          : 250,
  \ 'gray10'         : 252,
  \ })
" 'n': normal mode
" 'i': insert mode
" 'v': visual mode
" 'r': replace mode
" 'N': not active
let g:Powerline#Colorschemes#my#colorscheme = Pl#Colorscheme#Init([
  \ Pl#Hi#Segments(['SPLIT'], {
    \ 'n': ['white', 'gray2'],
    \ 'N': ['gray0', 'gray0'],
    \ }),
  \
  \ Pl#Hi#Segments(['mode_indicator'], {
    \ 'i': ['darkestgreen', 'white', ['bold']],
    \ 'n': ['darkestcyan', 'white', ['bold']],
    \ 'v': ['darkestpurple', 'white', ['bold']],
    \ 'r': ['mediumred', 'white', ['bold']],
    \ 's': ['white', 'gray5', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo', 'filename'], {
    \ 'i': ['white', 'darkestgreen', ['bold']],
    \ 'n': ['white', 'darkestcyan', ['bold']],
    \ 'v': ['white', 'darkestpurple', ['bold']],
    \ 'r': ['white', 'mediumred', ['bold']],
    \ 'N': ['gray0', 'gray2', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['branch', 'scrollpercent', 'raw', 'filesize'], {
    \ 'n': ['gray2', 'gray7'],
    \ 'N': ['gray0', 'gray2'],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.filepath', 'status'], {
    \ 'n': ['gray10'],
    \ 'N': ['gray5'],
    \ }),
  \
  \ Pl#Hi#Segments(['static_str'], {
    \ 'n': ['white', 'gray4'],
    \ 'N': ['gray1', 'gray1'],
    \ }),
  \
  \ Pl#Hi#Segments(['fileinfo.flags'], {
    \ 'n': ['white'],
    \ 'N': ['gray4'],
    \ }),
  \
  \ Pl#Hi#Segments(['currenttag', 'fileformat', 'fileencoding', 'pwd', 'filetype', 'rvm:string', 'rvm:statusline', 'virtualenv:statusline', 'charcode', 'currhigroup'], {
    \ 'n': ['gray9', 'gray4'],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo'], {
    \ 'n': ['gray2', 'gray10'],
    \ 'N': ['gray2', 'gray4'],
    \ }),
  \
  \ Pl#Hi#Segments(['errors'], {
    \ 'n': ['white', 'gray2'],
    \ }),
  \
  \ Pl#Hi#Segments(['lineinfo.line.tot'], {
    \ 'n': ['gray2'],
    \ 'N': ['gray2'],
    \ }),
  \
  \ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
    \ 'n': ['white', 'brightred', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:static_str.name', 'command_t:static_str.name'], {
    \ 'n': ['white', 'mediumred', ['bold']],
    \ 'N': ['brightred', 'darkestred', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:static_str.buffer', 'command_t:raw.line'], {
    \ 'n': ['white', 'darkred'],
    \ 'N': ['brightred', 'darkestred'],
    \ }),
  \
  \ Pl#Hi#Segments(['gundo:SPLIT', 'command_t:SPLIT'], {
    \ 'n': ['white', 'darkred'],
    \ 'N': ['white', 'darkestred'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
    \ 'n': ['brightpurple', 'darkestpurple'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
    \ 'n': ['white', 'mediumpurple'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:item'], {
    \ 'n': ['darkestpurple', 'white', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:marked'], {
    \ 'n': ['brightestred', 'darkestpurple', ['bold']],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:count'], {
    \ 'n': ['darkestpurple', 'white'],
    \ }),
  \
  \ Pl#Hi#Segments(['ctrlp:SPLIT'], {
    \ 'n': ['white', 'darkestpurple'],
    \ }),
  \ ])
let g:Powerline_colorscheme='my'
let g:Powerline_mode_n = 'NORMAL'
