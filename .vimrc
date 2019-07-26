set nobackup
set nowritebackup
set noswapfile
set smartindent 
set directory=~/.vim/tmp
set nohlsearch
set hidden
set history=1000
set softtabstop=2 
set shiftwidth=2
set tabstop=2
set expandtab
set bs=2
set nocp
set gp=grep\ -nr
set ignorecase
set smartcase
set title
set scrolloff=3
set ruler
set backspace=indent,eol,start
set incsearch
set listchars=tab:>-,trail:·,eol:$
set shortmess=a
set cmdheight=2
set visualbell
set confirm
set viminfo='20,<50,s10,h,%
syntax on 
"colorscheme matrix 
set number

nmap <silent> <leader>s :set nolist!<CR>
noremap <C-b> <C-y>
noremap <C-n> gt
noremap <C-p> gT
noremap <C-q> :bn <bar> bw #<CR>
noremap <C-s> :w!<CR>
noremap <C-g> :Ack<space>
noremap <C-x> :BufOnly<CR>
inoremap <C-s> <Esc>:w!<CR>
inoremap jk <Esc>
noremap <C-c> :let @+=@"<CR>
noremap <C-v> "+p
nnoremap ' `
nnoremap ` '
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

noremap <F2> o<cfdump var='##' top=3/><CR><cfabort /><ESC>kf#a
noremap <F3> o<cfdump var='##' top=3/><ESC>F#i
noremap <F4> I<!---<SPACE><ESC>A<SPACE>---!><ESC>:nohl<CR>
noremap <F5> :s/<!---\s//<CR>:s/\s--->//<CR>:nohl<CR>

let mapleader = ","

let g:fuzzy_matching_limit=20
let g:fuzzy_ceiling=2000
let g:fuzzy_ignore="vendor/*;*.jpg;*.gif"
set showcmd
set hlsearch


"press <leader>t to jump to previous tab
"let g:lasttab = 1
"nmap <leader>t1 :exe "tabn ".g:lasttab<CR>
"au TabLeave * let g:lasttab = tabpagenr()

"press <leader>t to jump to previous tab
:nnoremap <F1> :buffers<CR>:buffer<Space>
