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
    if exists("b:strip_trailing_whitespace") && !b:strip_trailing_whitespace
        return
    endif
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfunction
augroup pre_write_maybe_strip_trailing_whitespace
    autocmd!
    autocmd FileType diff DisableStripTrailingWhitespace
    autocmd BufWritePre * call <SID>MaybeStripTrailingWhitespace()
augroup end

"" Commands

command! EnableStripTrailingWhitespace :let b:strip_trailing_whitespace = 1
command! DisableStripTrailingWhitespace :let b:strip_trailing_whitespace = 0

"" Leader mappings

nnoremap <Space> <Nop>
let g:mapleader = " "

nnoremap <Leader>t :checktime<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>b :bw<CR>

nnoremap <Leader>c :cd %:p:h<CR>
nnoremap <Leader>g :Gcd<CR>

nnoremap <Leader>/ :nohlsearch<CR>

function! s:Split()
    let num = v:count1
    while num > 0
        execute (winheight(0) - (winheight(0) / (num + 1))) "split"
        let num -= 1
    endwhile
endfunction
nnoremap <Leader>s :<C-U>call <SID>Split()<CR>

function! s:Vsplit()
    let num = v:count1
    while num > 0
        execute (winwidth(0) - (winwidth(0) / (num + 1))) "vsplit"
        let num -= 1
    endwhile
endfunction
nnoremap <Leader>a :<C-U>call <SID>Vsplit()<CR>

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
nnoremap <Leader>r :call <SID>RegenCtags()<CR>

"" Regular mappings

nnoremap <Enter> o

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
nnoremap <S-Up> V<Up>
nnoremap <S-Down> V<Down>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>

" Quick window switching
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Down> <C-W><Down>
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
imap <C-Up> <Esc><C-Up>
imap <C-Down> <Esc><C-Down>
imap <C-Left> <Esc><C-Left>
imap <C-Right> <Esc><C-Right>

" Window resizing
nnoremap + 3<C-W>+
nnoremap _ 3<C-W>-

" Snippets
nmap <C-S> i<C-S>
inoremap <C-S>h #!/bin/sh<CR>
inoremap <C-S>p #!/usr/bin/env python3<CR>
inoremap <C-S>b #!/usr/bin/env bash<CR>
inoremap <C-S>f #!/usr/bin/env fish<CR>
augroup filetype_snippet_mappings
    autocmd!
    autocmd FileType c,cpp inoremap <buffer> <C-S>i #include ""<Left>
    autocmd FileType c,cpp inoremap <buffer> <C-S>s #include <><Left>
    autocmd FileType c,cpp inoremap <buffer> <C-S>m int main(int argc, char **argv)<CR>{<CR><CR>}<Up><Tab>
augroup end

nnoremap <C-P> :CommandT<CR>

"" Terminal key codes

if &term =~ "^alacritty"
    set <DecMouse>= " \e[ by default
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
