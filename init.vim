" dein scripts----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/colin/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/colin/.vim/dein')
  call dein#begin('/home/colin/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/colin/.vim/dein/repos/github.com/Shougo/dein.vim')

  " lines
  call dein#add('itchyny/lightline.vim')
  " TODO: bufferline

  " git support
  call dein#add('tpope/vim-fugitive')     " integration with some git commands
  call dein#add('airblade/vim-gitgutter') " git diff signs in the gutter
  call dein#add('junegunn/gv.vim')        " git commit browser

  " autocompletion and snippets
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('fszymanski/deoplete-emoji')
  call deoplete#custom#source('emoji', 'filetypes', ['golang'])
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  
  " search
  call dein#add('Shougo/denite.nvim')
  call dein#add('mileszs/ack.vim')
  call dein#add('ctrlpvim/ctrlp.vim')

  " colours (jump to SECT:COLOURS for configuration)
  "call dein#add('nightsense/night-and-day') " night and day configuration
  call dein#add('dracula/vim')
  "call dein#add('nightsense/vimspectr')
  "call dein#add('nightsense/snow')
  call dein#add('morhetz/gruvbox')
  call dein#add('crusoexia/vim-monokai')
  call dein#add('NovaDev94/lightline-onedark')

  " utilities
  call dein#add('editorconfig/editorconfig-vim') " load and use .editorconfig
  " call dein#add('wakatime/vim-wakatime')         " publish editing statistics to wakatime.com
  call dein#add('tpope/vim-sleuth')              " detect buffer options heuristically (e.g. indents)
  call dein#add('tpope/vim-vinegar')             " better netrw
  call dein#add('blueyed/vim-qf_resize')         " resize loclist/quickfix windows automatically
  call dein#add('tpope/vim-repeat')              " enable repeating in supported plugin maps with '.'
  " call dein#add('aurieh/discord.nvim')           " Discord rich presence integration
  call dein#add('aurieh/exctags.nvim')           " ctags
  call dein#add('tpope/vim-abolish')             " make lots of abbreviations really quickly
  call dein#add('tpope/vim-eunuch')              " unix integration with vim
  call dein#add('scrooloose/nerdtree')           " file tree

  " editing utilities
  call dein#add('tpope/vim-surround')              " surround an object with something
  call dein#add('tomtom/tcomment_vim')             " toggle comments on lines
  call dein#add('tpope/vim-unimpaired')            " complimentary pairs of mappings
  call dein#add('Raimondi/delimitMate')            " automatic closing of many things (e.g. quotes)
  call dein#add('junegunn/vim-easy-align')         " easy text alignment
  call dein#add('chrisbra/NrrwRgn')                " narrow region feature (inspired by Emacs)
  call dein#add('vim-scripts/ReplaceWithRegister') " replace text with register without overwriting the register
  call dein#add('tpope/vim-speeddating')           " edit dates easily
  call dein#add('justinmk/vim-sneak')              " jump to any location specified by two characters
  call dein#add('wellle/targets.vim', { 'on_event': 'InsertEnter' }) " more text objects

  " language support----------------------
    " elixir language support
    let elixir_ft_opt = { 'on_ft': 'elixir' }
    call dein#add('slashmili/alchemist.vim', elixir_ft_opt)
    call dein#add('elixir-lang/vim-elixir', elixir_ft_opt)

    " go language support
    let go_ft_opt = { 'on_ft': 'go' }
    call dein#add('zchee/deoplete-go', go_ft_opt)
    call dein#add('fatih/vim-go', go_ft_opt)
    call dein#add('jodosha/vim-godebug', go_ft_opt)

    let g:go_highlight_build_constraints = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_types = 1
    let g:go_auto_sameids = 0
    let g:go_fmt_command = "goimports"
    let g:go_auto_type_info = 1
    let g:go_build_tags = "integration"
    let g:go_guru_tags = "integration"

    " html+css+pug language support
    call dein#add('mattn/emmet-vim', { 'on_ft': ['html', 'css'] })
    call dein#add('digitaltoad/vim-pug', { 'on_ft': 'pug' })

    " markdown language support
    call dein#add('euclio/vim-markdown-composer', { 'on_ft': 'markdown', 'build': 'cargo build --release' })

    " python language support
    let python_ft_opt = { 'on_ft': 'python' }
    call dein#add('hdima/python-syntax')
    call dein#add('zchee/deoplete-jedi', python_ft_opt)

    " ruby language support
    " let ruby_ft_opt = { 'on_ft': 'ruby' }
    " call dein#add('vim-ruby/vim-ruby', ruby_ft_opt) 

    " rust language support
    let rust_ft_opt = { 'on_ft': 'rust' }
    call dein#add('rust-lang/rust.vim', rust_ft_opt)
    call dein#add('sebastianmarkow/deoplete-rust', rust_ft_opt)

    " tex (LaTeX) language support
    " call dein#add('lervag/vimtex', { 'on_ft': 'tex' })
  " end language support------------------

  " linters
  call dein#add('w0rp/ale')

  " orgmode
  let org_ft_opt = { 'on_ft': 'org' }
  call dein#add('jceb/vim-orgmode', org_ft_opt)
  call dein#add('vim-scripts/utl.vim', org_ft_opt)

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" install plugins that aren't installed on startup
"if dein#check_install()
"  call dein#install()
"endif
" end dein scripts------------------------


" basic options---------------------------
let mapleader = " "
noremap <Space> <NOP>

set hidden
set wildmenu
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set confirm
set smartindent
set visualbell
set t_vb=
"set mouse=a
set cmdheight=1
set notimeout
set noshowmode
set timeoutlen=200 ttimeoutlen=0
set number
set laststatus=2
set shortmess=a
set splitbelow
set splitright
set signcolumn=yes
set colorcolumn=120
set clipboard=unnamedplus
" end basic options-----------------------


" lightline-------------------------------
" taken from https://newbilityvery.github.io/2017/08/04/switch-to-lightline/
let g:lightline = {
  \   'colorscheme': 'onedark',
  \   'active': {
  \     'left': [
  \       [ 'mode', 'paste' ],
  \       [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
  \   'component': {
  \     'lineinfo': ' %3l:%-2v',
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   },
  \   'separator': {
  \     'left': '',
  \     'right': ''  
  \   },
  \   'subseparator': {
  \     'left': '',
  \     'right': ''
  \   },
  \   'tabline': {
  \     'left': [ ['tabs'] ],
  \     'right': [ ['close'] ]
  \   }
  \ }
set showtabline=2  " show tabline
set guioptions-=e  " don't use GUI tabline
" lightline-------------------------------

" colours (SECT:COLOURS)
"let g:nd_themes = [
"  \   ['sunrise+0'  , 'snow' , 'light', 'snow_light' ],
"  \   ['sunset+0'   , 'snow' , 'dark' , 'snow_dark'  ],
"  \ ]
"let g:nd_latitude = '-20'
"let g:nd_timeshift = '13'
"let g:nd_lightline = 1
set background=dark
"colorscheme dracula
"colorscheme vimspectr210-dark
"colorscheme snow
let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
" colorscheme monokai

" custom extension mappings
autocmd BufNewFile,BufRead *.njk set syntax=html

" ALE
let g:ale_open_list = 1
let g:ale_set_quickfix = 0
let g:ale_set_loclist = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_linters = {
\   'typescript': ['tsserver'],
\}
let g:ale_typescript_tsserver_use_global = 0

" delimitMate
let g:delimitMate_expand_cr = 1

" rust racer
let g:deoplete#sources#rust#racer_binary = "$HOME/.cargo/bin/racer"


" denite----------------------------------
nnoremap [denite] <Nop>
nmap <leader>D [denite]
nnoremap <silent> [denite]g :<C-u>Denite grep<CR>
nnoremap <silent> [denite]m :<C-u>Denite file_mru<CR>
nnoremap <silent> [denite]b :<C-u>Denite buffer<CR>
nnoremap <silent> [denite]t :<C-u>Denite tag<CR>
nnoremap <silent> [denite]d :<C-u>Denite dein<CR>
nnoremap <silent> [denite]c :<C-u>Denite command<CR>
nnoremap <silent> [denite]l :<C-u>Denite file_rec<CR>
nnoremap <silent> [denite]h :<C-u>Denite help<CR>

" replace grep with ag (silver searcher)
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
\ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('file_rec', 'command',
\ ['ag', '--follow', '--nocolor', '--nogroup', '--ignore-dir', 'node_modules', '-g', ''])
" end denite------------------------------


" keybinds--------------------------------
" unbind arrows and replace with C^hjkl
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <PageUp> <NOP>
nnoremap <PageDown> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <PageUp> <NOP>
inoremap <PageDown> <NOP>

" TODO 'cnoremap

vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <PageUp> <NOP>
vnoremap <PageDown> <NOP>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

" insert new paragraph below
nmap gp 2] ji

nmap nt :NERDTree<CR>
nmap gec :GoDecls<CR>
nmap gre :GoRename<CR>

" bind paste mode
set pastetoggle =<leader>pp
" end keybinds----------------------------


" neosnippet expand-----------------------
function! s:neosnippet_complete()
  let l:is_pumvisible = pumvisible()
  if l:is_pumvisible && neosnippet#expandable_or_jumpable()
    return "\<Plug>(neosnippet_expand_or_jump)"
  elseif l:is_pumvisible
    return "\<C-n>"
  else
    return "\<tab>"
  endif
endfunction

" ripped out of delimitMate
function! s:TriggerAbb() "{{{
  if v:version < 703
        \ || ( v:version == 703 && !has('patch489') )
        \ || pumvisible()
    return ''
  endif
  return "\<C-]>"
endfunction "}}}
map <expr> <Plug>(delimitMateCR) <SID>TriggerAbb()."\<C-R>=delimitMate#ExpandReturn()\<CR>"

function! s:neosnippet_expand_or_cr()
  if pumvisible()
    return "\<C-y>"
  else
    " return "\<CR>"
    return "\<Plug>delimitMateCR"
  endif
endfunction

imap <expr><CR> <SID>neosnippet_expand_or_cr()
"inoremap <expr><CR> pumvisible() ? "\<C-y>" : "\<CR>"
imap <expr><TAB> <SID>neosnippet_complete()
" neosnippet expand-----------------------


" deoplete--------------------------------
function! s:deoplete_lazy_enable()
 autocmd! deoplete_lazy_enable
 augroup! deoplete_lazy_enable
 call deoplete#enable()
endfunction
augroup deoplete_lazy_enable
 autocmd!
 autocmd CursorHold * call s:deoplete_lazy_enable()
 autocmd InsertEnter * call s:deoplete_lazy_enable()
       \ | silent! doautocmd <nomodeline> deoplete InsertEnter
augroup END
let g:deoplete#enable_smart_case = 1

nmap <silent> <leader>e :Explore<CR>
nmap <silent> <leader>b :Denite buffer<CR>
nmap <silent> <leader>g :Denite grep<CR>
" end deoplete----------------------------


" language configuration------------------
" golang
autocmd FileType go nmap <silent> <leader>gb :GoToggleBreakpoint<CR>
let g:go_fmt_autosave = 1 " disable gofmt because we have ale
" end language configuration--------------


" easyalign
xmap ga <plug>(easyalign)
nmap ga <plug>(easyalign)

" aurieh's angery.vim script
let g:close_fts = ['quickfix', 'qf', 'help']
function! CloseIfLast()
  let l:buftype = getbufvar(winbufnr(winnr()), '&buftype')
  if winnr('$') == 1 && index(g:close_fts, l:buftype) > -1
    q
  endif
endfunction
augroup annoyingwindows
  au!
  autocmd WinEnter * call CloseIfLast()
augroup END

" Explore
" nmap <silent> <leader> :Explore<CR>
