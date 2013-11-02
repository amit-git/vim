set expandtab
set ai
set si
set ts=2
set sw=2
set noswapfile
set nobackup
set ruler
set t_Co=256
"color desert
set nowrap
set cursorline
set number
set showcmd
set ff=unix
set hlsearch
set incsearch
set pastetoggle=<F2>
set title
let mapleader=","

" Pathogen plugin config
call pathogen#infect()

syntax on
colorscheme solarized
"colorscheme ir_black
"colorscheme peachpuff
"colorscheme default
filetype plugin indent on

"set bs=indent,eol,start
"set t_kb=ctrl-vBACKSPACE
fixdel

inoremap jj <ESC>
nnoremap ; :
nnoremap j gj
nnoremap k gk
nnoremap <leader>b :b#
nmap <silent> ,/ :nohlsearch<CR>
nnoremap <leader>pe :!p4 edit %<CR>
nnoremap <leader>pd :!p4 diff %<CR>
nnoremap <leader>pa :!p4 add %<CR>
nnoremap <leader>pc :!p4 changelist<CR>
nnoremap <leader>pr :!p4 revert %<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nn :set nonumber<CR>

" java getter setter generator plugin config
let b:javagetset_getterTemplate = 
  \ "\n" .
  \ "%modifiers% %type% %funcname%() {\n" .
  \ "    return %varname%;\n" . 
  \ "}"

let b:javagetset_setterTemplate = 
  \ "\n" .
  \ "%modifiers% void %funcname%(%type% %varname%) {\n" .
  \ "    this.%varname% = %varname%;\n" .
  \ "}"



"if has('gui_running')
"    set background=dark
"    set background=light
"else
"    set background=dark
"endif

set background=dark
set guifont=Menlo:h14

" freemarker template syntax
au BufRead,BufNewFile *.ftl setfiletype ftl

" todo list mappings
"nmap <leader>tp ^cwPENDING<ESC> 
"nmap <leader>td ^cwDONE<ESC> 
"nmap <leader>tt oTODO - <ESC>i 
"map <leader>ts o<ESC>^i* <ESC>i 

" copy visual selection to clipboard
vmap <leader>pb !tee >(pbcopy)<CR>

" Ruby syntax check
autocmd FileType ruby map <leader>rc :w<CR>:!ruby -c %<CR>
autocmd BufNewFile,BufRead *.quicktask setf quicktask
