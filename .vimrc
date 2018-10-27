" Pathogen config
execute pathogen#infect()
syntax on
filetype plugin indent on

" Just don't.
set noswapfile

" Syntax, numbers, and colors
syntax enable
set background=dark
colorscheme gruvbox
let g:airline_theme='base16'
set number
set cursorline
set cursorcolumn
highlight cursorline cterm=none
highlight cursorlinenr ctermbg=235 ctermfg=white
set lcs+=space:·

" Substitute shortcuts
nnoremap s :%s/
nnoremap S yiw:%s/<C-R>"/<C-R>"/c<left><left>

" Manual Indentation Adjustments
command! -nargs=1 Spaces execute "setlocal shiftwidth=" . <args> . " tabstop=" . <args> . " expandtab"

" Avoiding the Escape Key
" http://vim.wikia.com/wiki/Avoid_the_escape_key
imap jk <Esc> 

" Mappings for NERDTree
nmap <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 

" Mappings for Fugitive (git)
nmap <C-g>s :Gstatus<CR>
nmap <C-g>ds :Git diff --staged<CR>
nmap <C-g>c  :Gcommit<CR>

" Mapping for Ack (ag)
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
