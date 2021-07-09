autocmd BufNewFile *.py ~/.vim/template/simple.py
autocmd FileType c,cc,cpp setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType cc,cpp setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2

set fileencodings=ucs-bom,utf-8,cp936
" Remap VIM 0
map 0 ^
let g:colors_name = 'onedark'
set mouse=v
set wrap

set nu
set nospell

" Strip whitespace {
function! StripTrailingWhitespace()
	" Preparation: save last search, and cursor position.
	let _s=@/
	let l = line(".")
	let c = col(".")
	" do the business:
	%s/\s\+$//e
	" clean up: restore previous search history, and cursor position
	let @/=_s
	call cursor(l, c)
endfunction
" }


autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif
call dein#add('joshdick/onedark.vim')
