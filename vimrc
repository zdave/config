set rtp+=~/.vim/bundle/pathogen
execute pathogen#infect()

"" Options

colorscheme dave

set guifont=Consolas\ 11
set guioptions-=a " No autoselect
set guioptions+=f " Don't fork
set guioptions-=m " No menu
set guioptions-=T " No toolbar

set number
set cursorline
set showtabline=1 " Only if there are at least two tabs
set statusline=%<%f\ [%{&ff}%Y]%([%M%R]%)%=%P\ %l:%c
set title

set hlsearch
set ignorecase
set smartcase

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set cinoptions=:0,l1,g0,t0,(1s,u0,U1
let g:pyindent_continue = "&shiftwidth"
let g:pyindent_nested_paren = "0"
let g:pyindent_open_paren = "&shiftwidth"

set clipboard=unnamedplus
set noequalalways " Don't resize all windows on split/close
set hidden " Allow hiding of modified buffers
set modelines=0
set shell=bash
set wildmode=longest:full

let g:syntastic_python_python_exec = "python3"

let g:CommandTMaxFiles = 200000
let g:CommandTFileScanner = "git"
let g:CommandTTraverseSCM = "dir"

"" Auto commands

function! s:MaybeStripTrailingWhitespace()
    if &filetype == "diff"
        return
    endif
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction
augroup pre_write_maybe_strip_trailing_whitespace
    autocmd!
    autocmd BufWritePre * call <sid>MaybeStripTrailingWhitespace()
augroup end

"" Leader mappings

nnoremap <space> <nop>
let g:mapleader = " "

nnoremap <leader>t :checktime<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>b :bw<cr>

nnoremap <leader>c :cd %:p:h<cr>
nnoremap <leader>g :Gcd<cr>

nnoremap <leader>/ :nohlsearch<cr>

function! s:Split()
    let num = v:count1
    while num > 0
        execute (winheight(0) - (winheight(0) / (num + 1))) "split"
        let num -= 1
    endwhile
endfunction
nnoremap <leader>s :<c-u>call <sid>Split()<cr>

function! s:Vsplit()
    let num = v:count1
    while num > 0
        execute (winwidth(0) - (winwidth(0) / (num + 1))) "vsplit"
        let num -= 1
    endwhile
endfunction
nnoremap <leader>a :<c-u>call <sid>Vsplit()<cr>

function! s:RegenCtags()
    let t = findfile("tags", ".;")
    if empty(t)
        try
            let d = fugitive#repo().tree()
        catch
            echohl ErrorMsg
            echomsg "Couldn't find tags file nor git worktree"
            echohl None
            return
        endtry
    else
        let d = fnamemodify(t, ":p:h")
    endif

    execute "!cd" shellescape(d) "&& ctags -R --languages=c,c++ --extra=+qf --c-kinds=+p --c++-kinds=+p --fields=+S"
endfunction
nnoremap <leader>r :call <sid>RegenCtags()<cr>

"" Regular mappings

nnoremap <enter> o

" Don't exit visual mode after shifting
xnoremap < <gv
xnoremap > >gv

" Make Y consistent with D
nnoremap Y y$

" Allow semicolon instead of colon
nnoremap ; :
xnoremap ; :

" Nicer find word shortcuts
nnoremap # *
nnoremap ~ #
xnoremap # *
xnoremap ~ #
onoremap # *
onoremap ~ #

" Easier line select
nnoremap <s-up> V<up>
nnoremap <s-down> V<down>
vnoremap <s-up> <up>
vnoremap <s-down> <down>

" Quick window switching
nnoremap <c-up> <c-w><up>
nnoremap <c-down> <c-w><down>
nnoremap <c-left> <c-w><left>
nnoremap <c-right> <c-w><right>
imap <c-up> <esc><c-up>
imap <c-down> <esc><c-down>
imap <c-left> <esc><c-left>
imap <c-right> <esc><c-right>

" Snippets
nmap <c-s> i<c-s>
inoremap <c-s>p #!/usr/bin/env python3<cr>
inoremap <c-s>b #!/usr/bin/env bash<cr>
inoremap <c-s>f #!/usr/bin/env fish<cr>
augroup filetype_snippet_mappings
    autocmd!
    autocmd FileType c,cpp inoremap <buffer> <c-s>i #include ""<left>
    autocmd FileType c,cpp inoremap <buffer> <c-s>s #include <><left>
    autocmd FileType c,cpp inoremap <buffer> <c-s>m int main(int argc, char **argv)<cr>{<cr><cr>}<up><tab>
augroup end

nnoremap <c-p> :CommandT<cr>
