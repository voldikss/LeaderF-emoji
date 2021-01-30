" ============================================================================
" FileName: lf_emoji.vim
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss
" ============================================================================

let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
let g:Lf_Extensions.emoji = {
  \ 'source': 'lf_emoji#source',
  \ "arguments": [{'name': ['--gitmoji'], 'nargs': 0, 'help': 'only gitmojis'}],
  \ 'accept': 'lf_emoji#accept'
\ }
