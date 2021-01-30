" ============================================================================
" FileName: lf_emoji.vim
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" ============================================================================

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! lf_emoji#accept(line,...)
  call feedkeys("i")
  call feedkeys(strcharpart(a:line, 0, 1))
  call feedkeys(" ")
  call feedkeys("\<Esc>")
endfunction

function! lf_emoji#source(args)
  if a:args['arg_line'] =~ 'gitmoji'
    let file = 'gitmoji.txt'
  else
    let file = 'emoji.txt'
  endif
  return systemlist(printf('cat %s/%s', s:path, file))
endfunction
