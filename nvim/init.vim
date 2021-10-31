" plugins.

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'ryanoasis/vim-devicons'
Plug 'wakatime/vim-wakatime'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'lervag/vimtex'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'skwp/vim-indexed-search'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'farmergreg/vim-lastplace'
Plug 'preservim/vimux'
Plug 'tpope/vim-eunuch'
Plug 'mbbill/undotree'
Plug 'stevearc/qf_helper.nvim'
Plug 'turbio/bracey.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()



" setting options(internal)
noh
syntax on
set nocompatible
set nowrap
set so=7
set splitbelow
set splitright
set notimeout
set ttimeout
set grepformat^=%f:%l:%c:%m
set undofile
set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow
set undodir=~/.config/nvim/undodir
set showcmd
set virtualedit=all
set ai "Auto indent
set noshowmode
set noshowcmd
set si "Smart indent
set title
set ve+=onemore
set number
set expandtab
set noshiftround
set lazyredraw
set scrolloff=5
set cmdheight=2
set magic
set incsearch
set ignorecase
set timeout timeoutlen=1000 ttimeoutlen=100
set smartcase
set encoding=utf-8
set modelines=0
set hidden
set formatoptions=tqn1
set tabstop=4
set shell=zsh
set showmode
set shiftwidth=4
set softtabstop=4
set cmdheight=1
set backspace=indent,eol,start
set matchpairs+=<:>
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set history=500
set cursorline
set updatetime=0
hi CursorLine cterm=none
hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
hi CursorLineNr    term=bold cterm=bold ctermfg=cyan gui=bold
set lazyredraw
colorscheme ron
let loaded_matchparen = 1
set shortmess=F
set wildignore=*.o,*~,*.pyc
set hlsearch
set nobackup
set nowb
set noswapfile
set smarttab
let &fcs='eob: '
set ttyfast
set noruler
set wildchar=<TAB>
let mapleader = "\\"
set undolevels=1000
filetype plugin on
filetype indent on
set showtabline=0
set noshowmode
let g:currentmode={
       \ 'n'  : 'NORMAL',
       \ 'v'  : 'VISUAL',
       \ 'V'  : 'V·Line',
       \ "\<C-V>" : 'V·Block',
       \ "t" : 'Terminal',
       \ 'i'  : 'INSERT',
       \ 'R'  : 'R',
       \ 'Rv' : 'V·Replace',
       \ 'c'  : 'Command',
       \}
set statusline=
set statusline=%2*\ %{toupper(g:currentmode[mode()])}\ %4*\ %f\ %5*\ 
set statusline+=%=
set statusline+=%4*\ %l\ of\ %L\ %2*\ line\ 
set statusline+=%m
set statusline+=%r
set shm+=I
set nolist
set laststatus=1 
set mouse=a
set clipboard+=unnamedplus 
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set incsearch 
set wrap
set ruler

" setting-options(Plugings)
let g:NERDTreeMinimalUI=1
let g:tex_flavor='latex'
let g:NERDTreeHighlightCursorline= 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowFiles = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:enable_bold_font = 1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeStatusline = '%#NonText#'
let g:vimtex_view_general_viewer = 'sioyek'
let g:VimuxHeight = "20"
let g:VimuxPromptString = "❱❱ "
let g:VimuxCloseOnExit = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_HelpLine = 0
let g:bracey_refresh_on_save = 1
let g:bracey_eval_on_save  = 1
let g:fzf_buffers_jump = 1

" mapings
nmap <C-s> :w<CR>
nmap <silent><C-l> :noh<CR>
nmap <Space><Left> v<Left>
nmap <Space><Right> v<Right>
nmap <Space><Down> v<Down>
nmap <Space><Up> v<Up>
nmap <F3> :set invnumber<CR>
imap <F3> <Esc>:set invnumber<CR>a
nnoremap <M-t> :tabedit<CR>
nnoremap <silent> <M-e> :NERDTreeToggle<CR>
nnoremap <S-w> :q!<CR>
noremap <silent><Leader>f :Files <cr>
noremap <silent><Leader><space> :Buffers <cr>
noremap <silent><Leader>h :History <cr>
noremap <silent><Leader>s :History/ <cr>
nnoremap r :redo<cr>
nnoremap S :%s///gI<Left><Left><Left><Left>
nnoremap <silent><leader>w :SudoEdit<cr>
nnoremap H 0
nnoremap L $
nnoremap <leader>c :!echo % \| entr -n pandoc % -o %:r.pdf & <cr><cr>
vnoremap <CR> y
map <C-c> y
map <C-v> p
nnoremap <F1> i
nnoremap Q :qa<CR>
nnoremap dd "_dd
vnoremap dd "_dd
nnoremap D dd
vnoremap D dd
map <M-d> gt
map <silent> <M-r> :VimuxOpenRunner <CR>
map <silent> <leader>\ :VimuxPromptCommand <CR>
map <M-a> <esc>ggVG<CR>
map <leader>pp :setlocal paste!<cr>
nnoremap <leader>r :call CompileRun()<CR>
map <silent> <C-q> :QFToggle <CR>
nnoremap <leader>u :UndotreeToggle<cr>
map R <plug>UndotreeRedo
map U <plug>UndotreeUndo
nnoremap <silent><C-d> :below 20sp term://$SHELL<cr>
tnoremap ~ <C-\><C-n><C-w><C-w>
nnoremap ~ <C-w><C-w>
nnoremap <C-w>\ <C-w>v
nnoremap <C-w>- <C-w>s

" misc
autocmd VimResized * wincmd =

set autoread
au FocusGained,BufEnter * checktime

augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeHideCWD #^[</].*$# conceal
augroup end

autocmd BufEnter * set indentexpr=

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
autocmd BufLeave,BufWinLeave * silent! mkview

autocmd BufReadPost * silent! loadview
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40

autocmd VimEnter * source ~/.config/nvim/init.vim
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
 
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

highlight VertSplit ctermbg=none cterm=none ctermfg=0

autocmd BufEnter * silent! lcd %:p:h

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

func! CompileRun()
exec "w"
if &filetype == 'c'
    exec "!gcc % -o %<"
    exec "!./%<"
elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!./%<"
elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %"
elseif &filetype == 'sh'
    exec "!bash %"
elseif &filetype == 'python'
    exec "!python3 %"
elseif &filetype == 'html'
    exec "!google-chrome % &"
elseif &filetype == 'go'
    exec "!go build %<"
    exec "!go run %"
elseif &filetype == 'matlab'
    exec "!octave %"
endif  
endfunc
       
" Ui Configuration
hi linenr ctermfg=8
hi pmenu ctermbg=0 ctermfg=NONE
hi pmenusel ctermbg=4 ctermfg=0
hi pmenusbar ctermbg=0
hi pmenuthumb ctermbg=7
hi matchparen ctermbg=black ctermfg=NONE
hi search ctermbg=red
hi user1 ctermbg=1 ctermfg=0
hi user2 ctermbg=4 ctermfg=0
hi user3 ctermbg=0 ctermfg=NONE
hi user4 ctermbg=NONE ctermfg=NONE
hi group1 ctermbg=NONE ctermfg=0
hi Directory guifg=#FF0000 ctermfg=197
hi CursorLine cterm=none
hi CursorLineNr    term=bold cterm=bold ctermfg=197 gui=bold
hi QuickFixLine ctermfg=197 cterm=bold guifg=NONE gui=bold
hi TermCursor ctermbg=197  cterm=NONE ctermfg=0
hi MoreMsg ctermbg=none  cterm=NONE ctermfg=197
hi Question ctermbg=none  cterm=NONE ctermfg=197
hi Type ctermbg=none  cterm=NONE ctermfg=111
hi Structure ctermbg=none  cterm=NONE ctermfg=161
hi Typedef  ctermbg=none  cterm=NONE ctermfg=197
hi CursorColumn ctermbg=none  cterm=NONE ctermfg=0
hi Comment ctermbg=none  cterm=NONE ctermfg=37
hi ErrorMsg ctermbg=none  cterm=NONE ctermfg=196
hi PmenuSel ctermbg=197  

let &t_ut=''
autocmd colorscheme * hi clear cursorline
autocmd VimEnter * set autochdir
autocmd FileType qf 15wincmd_
au FocusGained,BufEnter * checktime
au TermOpen * setlocal listchars= nonumber norelativenumber
au TermOpen * startinsert
au TermOpen * hi StatusLine ctermbg=none  cterm=NONE ctermfg=7
au TermOpen * set laststatus=0
au BufEnter,BufWinEnter,WinEnter term://* startinsert
au BufLeave term://* stopinsert
au TermClose * call feedkeys(" ")
au TermClose * set laststatus=1

augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

highlight StatusLine   cterm=none ctermfg=0  ctermbg=none guibg=blue
highlight StatusLineNC cterm=none ctermfg=0 ctermbg=none guibg=green
