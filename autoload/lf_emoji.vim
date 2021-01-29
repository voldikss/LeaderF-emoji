" ============================================================================
" FileName: lf_emoji.vim
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" Origin: https://github.com/yazgoo/unicodemoji/blob/master/plugin/unicodemoji.vim
" ============================================================================

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! lf_emoji#accept(line,...)
  call feedkeys("i")
  call feedkeys(strcharpart(a:line, 0, 1))
  call feedkeys(" ")
  call feedkeys("\<Esc>")
endfunction

function! lf_emoji#source(args)
  return systemlist(s:path . '/emoji --no-fzf')
endfunction
