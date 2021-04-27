syntax enable
set encoding=utf-8
set nocompatible

"THEME
" set termguicolors
" set t_Co=256
" let g:sonokai_style='shusia'
" let g:sonokai_transparent_background=0
" colorscheme sonokai
colorscheme zenburn

let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-coloresque')
call add(g:pathogen_disabled, 'syntastic')
call add(g:pathogen_disabled, 'vim-gitgutter')
execute pathogen#infect()

"Terminal
fu GetTerm()
	terminal
	wincmd x
	res 40
endfu
"autocmd VimEnter * call GetTerm()

"MAPPING
:map <esc>[1;5D <C-Left>
:map <esc>[1;5C <C-Right>

"TAB
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set backspace=indent,eol,start
set nonumber
set showcmd
set nocursorline
"autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
"autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg
set title
set titlestring=%t%(\ (\ %{expand(\"%:p:h\")}\ )%)%(\ %a%)\ -\ [%{$USER}@%{hostname()}]
set titleold=					" reset title when exiting vim"
set novisualbell
set noerrorbells
set showmatch					" highlight matching [{()}]
"set lazyredraw					" redraw only when we need to.
let g:netrw_dirhistmax = 0		" prevent writing to netrw

set undofile					" maintain undo history between sessions
set undodir=~/.vim/tmp			" where undo history is maintained

if has("autocmd")				" return to last known cursor position
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"AUTOCOMPLETE
set wildmode=longest:full,longest
set wildmenu					" visual autocomplete for command menu

"SEARCH
set noincsearch					" search as characters are entered
set hlsearch					" highlight matches
set ignorecase
set smartcase					" ignore case if search pattern is all lowercase
vnoremap / <Esc>/\%><C-R>=line("'<")-1<CR>l\%<<C-R>=line("'>")+1<CR>l

"SPLIT
set splitright

"COPY/PASTE
set clipboard=unnamedplus

"FOLD
"filetype indent on				" load filetype-specific indent files
set foldenable					" enable folding
set foldmethod=indent			" fold automatically based on indent
set foldlevelstart=2			" fold to n level
set foldnestmax=4
nnoremap <space> za				" space open/closes folds

"NERDTREE
map <F1> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40

"AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_section_y=''
let g:airline_theme='zenburn'

"ALE
nmap <silent> <C-Left> <Plug>(ale_previous_wrap)
nmap <silent> <C-Right> <Plug>(ale_next_wrap)
let g:airline#extensions#ale#enabled = 1

"SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "\u2717"
let g:syntastic_warning_symbol = "\u2757"

"GITGUTTER
let g:gitgutter_max_signs = 250	" default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_max_signs = -1	" default value (otherwise)

"GOYO
let g:goyo_width = 80				" default: 80
let g:goyo_height = 80				" default: 85%
let g:goyo_linenr = 0				" default: 0

"Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"see: https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
