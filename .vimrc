set number

set ts=4
set sts=4
set sw=4
set expandtab

set list
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<AR>

"syntax off
"set nohlsearch
"set t_Co=0
highlight NonText guifg=#fdf6e3

function! <SID>stripTrailingWhitespaces()
    let lastSearchString = @/
    let lineNum = line(".")
    let colNum = col(".")
    %s/\s\+$//e
    let @/ = lastSearchString
    call cursor(lineNum, colNum)
endfunction
nnoremap <F5> :call <SID>stripTrailingWhitespaces()<AR>
autocmd BufWritePre * :call <SID>stripTrailingWhitespaces()

"noremap <A-Tab> gt
"noremap <A-S-Tab> gT
"noremap <A-1> 1gt
"noremap <A-2> 2gt
"noremap <A-3> 3gt
"noremap <A-4> 4gt
"noremap <A-5> 5gt
"noremap <A-6> 6gt
"noremap <A-7> 7gt
"noremap <A-8> 8gt
"noremap <A-9> 9gt
"noremap <A-0> :tablast<CR>

cnoremap %% <C-R>=fnameescape(expand('%:p:h')).'/'<CR>

