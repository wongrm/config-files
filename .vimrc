set smartindent 
set backupdir=~/.vim/tmp
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
set shortmess=atI
set visualbell
set confirm
set viminfo='20,<50,s10,h,%
syntax on 
"colorscheme matrix 
set number

nmap <silent> <leader>s :set nolist!<CR>
noremap <C-n> gt
noremap <C-p> gT
noremap <C-q> :bn <bar> bw #<CR>
noremap <C-s> :w!<CR>
noremap <C-g> :Ack<space>
noremap <C-x> :BufOnly<CR>
noremap <C-x> :NERDTreeToggle<CR>
inoremap <C-s> <Esc>:w!<CR>
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
set smartindent 
set backupdir=~/.vim/tmp
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
set shortmess=atI
set visualbell
set confirm
set viminfo='20,<50,s10,h,%
syntax on 
set background=light
"colorscheme solarized 
set number

nmap <silent> <leader>s :set nolist!<CR>
noremap <C-n> gt
noremap <C-p> gT
noremap <C-q> :bn <bar> bw #<CR>
noremap <C-s> :w!<CR>
noremap <C-g> :Ack<space>
noremap <C-x> :BufOnly<CR>
noremap <C-x> :NERDTreeToggle<CR>
inoremap <C-s> <Esc>:w!<CR>
vnoremap <C-c> "+y
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

noremap <F2> o<cfdump var='##' /><CR><cfabort /><ESC>kf#a
noremap <F3> o<cfdump var='##' /><ESC>F#i
noremap <F4> I<!---<SPACE><ESC>A<SPACE>---><ESC>
noremap <F5> :s/<!---\s//<CR>:s/\s--->//<CR>

let mapleader = ","

let g:fuzzy_matching_limit=20
let g:fuzzy_ceiling=2000
let g:fuzzy_ignore="vendor/*;*.jpg;*.gif"
let g:NERDTreeChDirMode=2
set dict+="~/.vim/dic/CF.dict"
silent sv ~/.vim/dic/CF.dict
set showcmd
set hlsearch
q
