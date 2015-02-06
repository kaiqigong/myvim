set nocompatible
set autoindent
set modifiable
set nobackup
set nowritebackup
set number                      " Show line numbers
set autoread                    " Set autoread when a file is changed outside
set autowrite                   " Writes on make/shell commands
set noswapfile                  " No swap files
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set cursorline                  " Highlight current line
set hlsearch                    " Highlight all search matches
set incsearch                   " Find as you type search
set ignorecase                  " Case insensitive search
set history=100                 " Number of things to remember in history.
set laststatus=2                " Always display the status line
set showtabline=2               " Display tab bar all the time
set clipboard=unnamed           " Use OS clipboard for copypasta
set backspace=indent,eol,start  " Backspace for dummies

" Show ALL white spaces as a character
set list
set listchars=tab:»●,trail:●

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Default to soft tabs, 2 spaces
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let mapleader = ","

" Swap iTerm2 cursors in vim insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Keep search matches in the middle of the window
nmap n nzzzv
nmap N Nzzzv
nmap * *zzzv
nmap # #zzzv
nmap g* g*zzzv
nmap g# g#zzzv

" Remove search highlight
nmap v<Space> :noh<CR>

" Add a blank line below or above and keep the cursor in place
nmap <Leader>O m`O<Esc>``
nmap <Leader>o m`o<Esc>``

" Remap U to <C-r> for easier redo
nmap U <C-r>

" For Command model
cmap <C-a> <Home>
cmap <C-e> <End>

" Navigation between windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" Use CTRL-S for saving, also in Insert mode
nmap <C-S> :update<CR>
imap <C-S> <Esc>:update<CR>
" Preserves the previous selection
vmap <C-S> <Esc>:update<CR>gv

" Tab control
nmap <S-L> :tabn<CR>
nmap <S-H> :tabp<CR>
nmap <C-M>L :tabm +1<CR>
nmap <C-M>H :tabm -1<CR>
nmap <C-T> :tabnew<CR>
nmap <C-Q> :q


"
" Bundle
" Runtime Path Manipulation
"
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on                 " Syntax highlighting
filetype plugin indent on " Automatically detect file types

map <C-E> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nmap <Leader>n <Plug>GitGutterNextHunk
nmap <Leader>p <Plug>GitGutterPrevHunk
imap <expr> <Tab>   pumvisible() ? "\<C-N>" : "\<Tab>"
imap <expr> <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
imap <expr> <CR>    pumvisible() ? "\<C-Y>" : "\<CR>"
imap <expr> <C-B>   neocomplcache#cancel_popup()

set viminfo='100,n$HOME/.vim/viminfo
set wildignore+=
      \*/tmp/*,*/.tmp/*,*/dist/*,
      \*/.idea/*,*/node_modules/*,*/platforms/*,
      \*.jar,*.zip,*.so,*.swp,*.class,*.map,*.swf,*.swc

let g:ackhighlight = 1
let g:ctrlp_show_hidden = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_delimiter = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:gist_post_private = 1
let g:gitgutter_max_signs = 10000
let g:multi_cursor_next_key = '<C-n>'
let g:multi_cursor_prev_key = '<C-m>'
let g:multi_cursor_skip_key = '<C-x>'
let g:multi_cursor_quit_key = '<Esc>'
let g:indentLine_char = '┊'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:syntastic_html_checkers = []
let g:startify_list_order = [
        \ ['   Most recently used:'],
        \ 'files',
        \ ['   Sessions:'],
        \ 'sessions',
        \ ['   Bookmarks:'],
        \ 'bookmarks',
        \ ]
let g:startify_custom_header = [
        \ '                                                                   Z',
        \ '      |\/|    \  /`.|\/|                                    Z',
        \ '      |  |\/   \/  ||  |                (,.~.,.        z',
        \ '          /                             ////((\\    z',
        \ '   __________________________          ///`_  _`\ `    ___________________',
        \ '                                       ||G   \ ||      ',
        \ '   First, solve the problem.           .\|.: ~ :         .--------------.',
        \ '                                      __.| `"`.__       | \              |',
        \ '   Then, write the code.            .``   `---`   `.    |  .             :',
        \ '                                   /                `   |   `-.__________)',
        \ '   - John Johnson                 |   H A C K I N G     |  :  |          .',
        \ '                                  |    _                |     |   [ ##   :',
        \ '                                   \    `--.        ____|  ,   oo_______.`',
        \ ]

color molokai
hi CursorLine  ctermbg=236                            cterm=none
hi Visual      ctermbg=236
hi Search      ctermfg=222        ctermbg=240         cterm=none
hi MatchParen  ctermfg=none       ctermbg=none        cterm=underline
hi Pmenu       ctermfg=LightGray  ctermbg=DarkGray
hi PmenuSel    ctermfg=White      ctermbg=DarkBlue
hi PmenuSbar   ctermbg=DarkGray
hi TabLine     ctermfg=LightGray  ctermbg=DarkGray    cterm=none
hi TabLineSel  ctermfg=White      ctermbg=DarkBlue    cterm=none
hi TabLineFill ctermfg=Black      ctermbg=DarkGray    cterm=none

