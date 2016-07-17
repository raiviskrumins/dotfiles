if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/clagraff/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/clagraff/.config/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('morhetz/gruvbox')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('scrooloose/syntastic')
call dein#add('Shougo/deoplete.nvim')
call dein#add('fatih/vim-go')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

autocmd filetype python set expandtab
autocmd filetype coffee :setlocal sw=2 ts=2 sts=2
autocmd filetype scss :setlocal sw=2 ts=2 sts=2
autocmd BufRead,BufNewFile *.jinja2 :setlocal sw=2 ts=2 sts=2 ft=html
autocmd BufRead,BufNewFile *.json :setlocal ft=javascript

syntax on

" Disable vi compatibility
set nocompatible

set t_Co=256

" Set the desired colorscheme.
colorscheme gruvbox
set background=dark    " Setting dark mode

set scroll=5
set encoding=utf-8 " Set character encoding for vim.

" Show line number, and cursor position.
set number
set relativenumber
set ruler

set wildmenu " Show menu for tab-completion
" set cursorline " Highlight current line

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif


set autoindent  " Use current indentation on next line.
set copyindent  " Uses characters from previous line for 'tabbing'
set shiftwidth=4 " Number of columns to re/indent on << and >>
set tabstop=4  " How many columns wide a tab character procudes/
set expandtab
set smarttab
set smartindent

set hlsearch  " Highlight search results.
set ignorecase  " Ignore case when searching.
set smartcase  " Case-seach if query has uppers

set laststatus=2

" Hide a buffer when it becomes abandoned.
set hidden

set wrap   " Wrap lines.
set showmatch  " Show matching parenthesis.
set mat=2 " How many 10ths of a second to blink matching brackets.
set history=1000 " Remember 1000 commands.
set undolevels=1000 " Set max undo history to 1000.
set visualbell  " Do not beep. Use visual bell.
set noerrorbells " No beep on erros. Visual bell only.
set backup   " Backup edited (but not appended) files.
set noswapfile  " Disable utilizing swapfile for buffer.
set title   " Set window title to filename (plus info).

set list
set listchars=tab:┊\ 

set lazyredraw " Don't redraw while executing macros.

set magic " ... for regular expressions.

" Enable mouse if possible.
if has('mouse')
    set mouse=a
endif

if exists("+colorcolumn")
	set colorcolumn=81
endif

" Set the file backup directory and backup file extension.
set backupdir=~/.local/share/nvim/backup
set backupext=.bak
"set nobackup  " Disable built-in backup functionality

" Ignore the specified files when doing text completion.
set wildignore=*.swp,*.bal,*.pyc,*.class

"Allow for backspacing over evertyhing in i-mode.
set backspace=eol,start,indent

" Enforce cursor linewrap when navigating with arrow or <h>, <l> keys
set whichwrap+=<,>,h,l,[,]

" Enable paste-toggle mode with <F2>
set pastetoggle=<F2>
nnoremap <leader>p :setlocal paste!<cr>

" Add a bit of extra margin to the left.
set foldcolumn=1

" Use unix as the standard file type.
set ffs=unix,dos,mac

" Enable saving file as root by using <W-!-!>

" Show the tabbar (always)
"set showtabline=2

" Open new split panes on the right and bottom
set splitbelow
set splitright

" ###########################
" Remapping Keys
" ###########################
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<space>"
let g:mapleader = "\<Space>"


" Map <,-/> to clear search-highlights
nmap <silent> <leader>/ :nohlsearch<CR>
nnoremap <silent> // :nohlsearch<CR>

" Remap 0 to first non-blank character
map 0 ^ 

" Vim tab control.
" <t-j> goes to next tab.
" <t-k> goes to previous tab.
" <t-n> creates a new tab.
" <t-d> deletes current tab.
" <C-Insert> creates new tab (similar to when in i-mode).
" <C-Delete> deletes current tab (similar to when in i-mode).
nnoremap tj :bprev<CR>
nnoremap t<Left> :bprev<CR>

nnoremap tk :bnext<CR>
nnoremap t<Right> :bnext<CR>

nnoremap tn :enew<CR>
nnoremap td :bd<CR>

nnoremap th :bfirst<CR>
nnoremap t<Down> :bfirst<CR>

nnoremap tl :blast<CR>
nnoremap t<Up> :blast<CR>

" Remap shift-right to go to end up current word before going to beginning of
" next word.

" Forced-commands of standard equivallents.
command! E :e!
command! Q :q!
command! W :w!

nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>wqf :w!<CR>:q<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>wf :w!<CR>

nnoremap <Leader>q :q<CR>
nnoremap <Leader>qf :q!<CR>

nnoremap <Leader>e :e<Space>
nnoremap <Leader>ef :e!<Space>

" <C-r> will reload vim without closing the current session.
"noremap <silent> <C-r> :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" <C-d> will display the differnces between the current buffer 
" and the actual content of the current file.
"nnoremap <silent> <C-d> :w !diff % -<CR>
"inoremap <silent> <C-d> <Esc>:w !diff % -<CR>

" Remap the bracket and brace keys to autocomplete their opposites.
inoremap <silent> { {}<Left>
inoremap <silent> [ []<Left>
inoremap <silent> ( ()<Left>
inoremap <silent> < <><Left>

" Autotab the current file.
nnoremap <silent> <leader>tt mzgg=G'z<CR>


nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <leader>tb :TagbarToggle<CR>
nnoremap <silent> <leader>i :TagbarToggle<CR>

" #########################
" Extras
" #########################

" Enable buffer-bar for Vim windows.
let g:airline#extensions#tabline#enabled = 1


"match ErrorMsg '\s\+$'

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:go_fmt_command = "goimports"

"let g:ycm_show_diagnostics_ui = 0
"let g:ycm_auto_trigger = 0

set completeopt=menu,menuone,longest
set tags=./tags;/

" set completeopt=menuone

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
" Remember info about open buffers on close
set viminfo^=%

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabDefaultCompletionType = "context"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

" Enable "very magic" mode for searches (as a default).
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %smagic/
cnoremap \>s/ \>smagic/
nnoremap :g/ :g/\v
nnoremap :g// :g//


" Syntastic config options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Configure python3 path
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Enable deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif


" go-vim options
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_term_enabled = 1
