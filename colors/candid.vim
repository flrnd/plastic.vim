" Name:         vim-candid
" Description:  A vim theme inspired in VSCode themes Plastic and Onedark.vim
" Author:       Florian Prz
" Maintainer:   Florian Prz
" Website:      https://github.com/flrnprz/candid.vim/
" License:      Vim License (see `:help license`)
" Last Updated: Tue 28 May 2019 10:15:03 PM CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[vim-candid] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'candid'

if &background ==# 'dark'
  let g:terminal_ansi_colors = [
        \ '#21252b', '#e06c75', '#98c379', '#d79921', '#e5c07b', '#b16286', '#60b6c2', '#7c8696',
        \ '#2d303d', '#e06c75', '#98c379', '#e5c07b', '#61afef', '#af98e6', '#56b6c2', '#a9b2c3']
  if !has('gui_running') && get(g:, 'candid_transp_bg', 0)
    hi Normal ctermfg=249 ctermbg=NONE guifg=#a9b2c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=249 ctermbg=NONE guifg=#a9b2c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=249 ctermbg=NONE guifg=#a9b2c3 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=234 ctermbg=NONE guifg=#1a1d27 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=188 ctermbg=235 guifg=#d7d7d7 guibg=#21252b guisp=NONE cterm=NONE gui=NONE
    hi CursorLineNr ctermfg=179 ctermbg=236 guifg=#e5c07b guibg=#2d303d guisp=NONE cterm=NONE gui=NONE
    hi FoldColumn ctermfg=249 ctermbg=234 guifg=#a9b2c3 guibg=#181a1f guisp=NONE cterm=NONE gui=NONE
    hi SignColumn ctermfg=188 ctermbg=235 guifg=#d7d7d7 guibg=#21252b guisp=NONE cterm=NONE gui=NONE
    hi VertSplit ctermfg=249 ctermbg=235 guifg=#a9b2c3 guibg=#21252b guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=235 guifg=NONE guibg=#21252b guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi! link CursorColumn CursorLine
  hi CursorLine ctermfg=249 ctermbg=234 guifg=#a9b2c3 guibg=#181a1f guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=150 ctermbg=235 guifg=#98c379 guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=73 ctermbg=235 guifg=#56b6c2 guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=203 ctermbg=235 guifg=#e06c75 guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=235 guifg=#e5c07b guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=150 ctermbg=NONE guifg=#98c379 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=235 guifg=#e06c75 guibg=#21252b guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi ErrorMsg ctermfg=235 ctermbg=203 guifg=#21252b guibg=#e06c75 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Folded ctermfg=249 ctermbg=234 guifg=#abb2bf guibg=#181a1f guisp=NONE cterm=NONE gui=NONE,italic
  hi IncSearch ctermfg=180 ctermbg=235 guifg=#d19a66 guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi LineNr ctermfg=241 ctermbg=NONE guifg=#5f6672 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi ModeMsg ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi MoreMsg ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Noise ctermfg=102 ctermbg=NONE guifg=#7c8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=180 ctermbg=234 guifg=#d19a66 guibg=#181a1f guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1a1d27 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=234 ctermbg=241 guifg=#181a1f guibg=#5f6672 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PmenuThumb ctermfg=NONE ctermbg=236 guifg=NONE guibg=#2d303d guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link QuickFixLine Search
  hi Search ctermfg=179 ctermbg=235 guifg=#e5c07b guibg=#21252b guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpecialKey ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=#e06c75 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellCap ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=#61afef cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellLocal ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=#56b6c2 cterm=NONE,underline gui=NONE,italic,undercurl
  hi SpellRare ctermfg=140 ctermbg=NONE guifg=#af98e6 guibg=NONE guisp=#af98e6 cterm=NONE,underline gui=NONE,italic,undercurl
  hi StatusLine ctermfg=234 ctermbg=180 guifg=#181a1f guibg=#d19a66 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineNC ctermfg=234 ctermbg=180 guifg=#181a1f guibg=#d19a66 guisp=NONE cterm=NONE gui=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine TabLineFill
  hi TabLineFill ctermfg=236 ctermbg=234 guifg=#2d303d guibg=#181a1f guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=150 ctermbg=234 guifg=#98c379 guibg=#181a1f guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=150 ctermbg=NONE guifg=#98c379 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Visual ctermfg=234 ctermbg=180 guifg=#181a1f guibg=#d19a66 guisp=NONE cterm=NONE gui=NONE
  hi! link VisualNOS Visual
  hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi WildMenu ctermfg=39 ctermbg=235 guifg=#61afef guibg=#21252b guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Comment ctermfg=249 ctermbg=NONE guifg=#abb2bf guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
  hi Constant ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Delimiter ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=203 ctermbg=236 guifg=#e06c75 guibg=#2d303d guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
  hi String ctermfg=150 ctermbg=NONE guifg=#98c379 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Boolean ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ToolbarLine ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1a1d27 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=188 ctermbg=234 guifg=#d7d7d7 guibg=#1a1d27 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi xmlRegion ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTag ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlTagName ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link htmlTag xmlTag
  hi! link htmlEndTag htmlTag
  hi! link htmlTagName xmlTagName
  hi htmlArg ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi xmlEndtag ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsNoise ctermfg=102 ctermbg=NONE guifg=#7c8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsParens ctermfg=102 ctermbg=NONE guifg=#7c8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsBrackets ctermfg=102 ctermbg=NONE guifg=#7c8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsImport ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link jsExport jsImport
  hi! link jsFrom jsImport
  hi! link jsExportDefault jsImport
  hi jsStorageClass ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsClassKeyword ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsExtendsKeyword ctermfg=39 ctermbg=NONE guifg=#61afef guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi jsThis ctermfg=179 ctermbg=NONE guifg=#e5c07b guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDirective ctermfg=73 ctermbg=NONE guifg=#56b6c2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goConstants ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclaration ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goDeclType ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi goBuiltins ctermfg=180 ctermbg=NONE guifg=#d19a66 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  finish
endif

let g:terminal_ansi_colors = [
      \ '#fffdf2', '#e06c75', '#98c379', '#d79921', '#e5c07b', '#b16286', '#60b6c2', '#4e5356',
      \ '#938b7f', '#b5000f', '#489600', '#eabf15', '#0060af', '#6436d8', '#00aaba', '#373a3d']
if !has('gui_running') && get(g:, 'candid_transp_bg', 0)
  hi Normal ctermfg=237 ctermbg=NONE guifg=#373a3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=178 ctermbg=NONE guifg=#eabf15 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=237 ctermbg=NONE guifg=#373a3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=237 ctermbg=NONE guifg=#373a3d guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=248 ctermbg=NONE guifg=#b2a899 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=236 ctermbg=231 guifg=#2b2e30 guibg=#fffdf2 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=178 ctermbg=245 guifg=#eabf15 guibg=#938b7f guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=237 ctermbg=254 guifg=#373a3d guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=236 ctermbg=252 guifg=#2b2e30 guibg=#d8d1c0 guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=237 ctermbg=252 guifg=#373a3d guibg=#d8d1c0 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=252 guifg=NONE guibg=#d8d1c0 guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link CursorColumn CursorLine
hi CursorLine ctermfg=237 ctermbg=254 guifg=#373a3d guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=64 ctermbg=231 guifg=#489600 guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=37 ctermbg=231 guifg=#00aaba guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=203 ctermbg=231 guifg=#b5000f guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=178 ctermbg=231 guifg=#eabf15 guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=64 ctermbg=NONE guifg=#489600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=203 ctermbg=231 guifg=#b5000f guibg=#fffdf2 guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi ErrorMsg ctermfg=231 ctermbg=203 guifg=#fffdf2 guibg=#b5000f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Folded ctermfg=246 ctermbg=254 guifg=#919191 guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE,italic
hi IncSearch ctermfg=180 ctermbg=231 guifg=#d4b483 guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi LineNr ctermfg=238 ctermbg=NONE guifg=#424749 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=NONE ctermbg=25 guifg=NONE guibg=#0060af guisp=NONE cterm=NONE,bold gui=NONE,bold
hi ModeMsg ctermfg=178 ctermbg=NONE guifg=#eabf15 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi MoreMsg ctermfg=178 ctermbg=NONE guifg=#eabf15 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Noise ctermfg=245 ctermbg=NONE guifg=#938b7f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=180 ctermbg=254 guifg=#d4b483 guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=248 guifg=NONE guibg=#b2a899 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=254 ctermbg=238 guifg=#ede5d3 guibg=#424749 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PmenuThumb ctermfg=NONE ctermbg=245 guifg=NONE guibg=#938b7f guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link QuickFixLine Search
hi Search ctermfg=178 ctermbg=231 guifg=#eabf15 guibg=#fffdf2 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpecialKey ctermfg=178 ctermbg=NONE guifg=#eabf15 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=203 ctermbg=NONE guifg=#b5000f guibg=NONE guisp=#b5000f cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellCap ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=#0060af cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellLocal ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=#00aaba cterm=NONE,underline gui=NONE,italic,undercurl
hi SpellRare ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=#6436d8 cterm=NONE,underline gui=NONE,italic,undercurl
hi StatusLine ctermfg=254 ctermbg=180 guifg=#ede5d3 guibg=#d4b483 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineNC ctermfg=254 ctermbg=180 guifg=#ede5d3 guibg=#d4b483 guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine TabLineFill
hi TabLineFill ctermfg=245 ctermbg=254 guifg=#938b7f guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=64 ctermbg=254 guifg=#489600 guibg=#ede5d3 guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=64 ctermbg=NONE guifg=#489600 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Visual ctermfg=254 ctermbg=238 guifg=#ede5d3 guibg=#424749 guisp=NONE cterm=NONE gui=NONE
hi! link VisualNOS Visual
hi WarningMsg ctermfg=203 ctermbg=NONE guifg=#b5000f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi WildMenu ctermfg=25 ctermbg=252 guifg=#0060af guibg=#d8d1c0 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Comment ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE,italic
hi Constant ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=203 ctermbg=NONE guifg=#b5000f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Delimiter ctermfg=203 ctermbg=NONE guifg=#b5000f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=203 ctermbg=245 guifg=#b5000f guibg=#938b7f guisp=NONE cterm=NONE,bold,reverse gui=NONE,bold,reverse
hi String ctermfg=64 ctermbg=NONE guifg=#489600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Boolean ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=37 ctermbg=NONE guifg=#00aaba guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=203 ctermbg=NONE guifg=#b5000f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
hi CursorIM ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ToolbarLine ctermfg=NONE ctermbg=248 guifg=NONE guibg=#b2a899 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=236 ctermbg=248 guifg=#2b2e30 guibg=#b2a899 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi xmlRegion ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi xmlTag ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi xmlTagName ctermfg=178 ctermbg=NONE guifg=#eabf15 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link htmlTag xmlTag
hi! link htmlEndTag htmlTag
hi! link htmlTagName xmlTagName
hi htmlArg ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi xmlEndtag ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsNoise ctermfg=245 ctermbg=NONE guifg=#938b7f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsParens ctermfg=245 ctermbg=NONE guifg=#938b7f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsBrackets ctermfg=245 ctermbg=NONE guifg=#938b7f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsImport ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link jsExport jsImport
hi! link jsFrom jsImport
hi! link jsExportDefault jsImport
hi jsStorageClass ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsClassKeyword ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsExtendsKeyword ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi jsThis ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi goDirective ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi goConstants ctermfg=25 ctermbg=NONE guifg=#0060af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi goDeclaration ctermfg=92 ctermbg=NONE guifg=#6436d8 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi goDeclType ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi goBuiltins ctermfg=180 ctermbg=NONE guifg=#d4b483 guibg=NONE guisp=NONE cterm=NONE gui=NONE
finish

" Color: neutralred        rgb(224, 108, 117)    ~
" Color: neutralgreen      rgb(152, 195, 121)    ~
" Color: neutralyellow     rgb(215, 153,  33)    ~
" Color: neutralblue       rgb(229, 192, 123)    ~
" Color: neutralpurple     rgb(177,  98, 134)    ~
" Color: neutralaqua       rgb( 96, 182, 194)    ~
" Color: neutralorange     rgb(209, 154, 102)    ~
" Background: dark
" Color: bg0 #21252b ~
" Color: bg1             #181a1f    ~
" Color: bg2             #21252b    ~
" Color: bg3             #1a1d27    ~
" Color: bg4             #2d303d    ~
" Color: fg0             #d7d7d7    ~
" Color: fg1             #a9b2c3    ~
" Color: fg2             #5f6672    ~
" Color: fg3             #7c8696    ~
" Color: fg4             #d7d7d7    ~
" Color: grey            #abb2bf    ~
" Color: red             #e06c75  203
" Color: green           #98c379    ~
" Color: yellow          #e5c07b    ~
" Color: blue            #61afef    ~
" Color: purple          #af98e6    ~
" Color: aqua            #56b6c2    ~
" Color: orange          #d19a66    ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   fg1   none
"     SignColumn   fg1    none
"     VertSplit    bg3    none
"     Normal       fg0    bg0
"     CursorLineNr yellow bg4
"     FoldColumn   fg1    bg1
"     SignColumn   fg0    bg2
"     VertSplit    fg1    bg2
" ColorColumn                      none   bg2
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       fg1    bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none
" EndOfBuffer                      orange none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           fg2    none
" MatchParen                       blue   none    bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" Noise                            fg3    none
" NonText                          orange none
" Pmenu                            orange bg1
" PmenuSbar                        none   bg3
" PmenuSel                         bg1    fg2     bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       yellow none
" SpellBad                         red    none    t=underline g=italic,undercurl s=red
" SpellCap                         blue   none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua   none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple none    t=underline g=italic,undercurl s=purple
" StatusLine                       bg1    orange     reverse
" StatusLineNC                     bg1    orange
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           bg1    orange
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Comment                          grey   none    g=italic
" Constant                         aqua   none
" Debug                            red    none
" Delimiter                        red    none
" Error                            red    bg4     bold,reverse
" String                           green  none
" Ignore                           fg     none
" PreProc                          aqua    none
" Character                        aqua   none
" Number                           aqua   none
" Boolean                          aqua   none
" Float                            aqua   none
" Identifier                       fg     none
" Function                         orange none
" Statement                        red    none
" Type                             blue   none
" Special                          fg     none
" Todo                             aqua   none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" xmlRegion                        none none
" xmlTag                           none none
" xmlTagName                       yellow none
" htmlTag                      ->  xmlTag
" htmlEndTag                   ->  htmlTag
" htmlTagName                  ->  xmlTagName
" htmlArg                          orange none
" xmlEndtag                        none none
" jsNoise                          fg3 none
" jsParens                         fg3 none
" jsBrackets                       fg3 none
" jsImport                         red none
" jsExport                      -> jsImport
" jsFrom                        -> jsImport
" jsExportDefault               -> jsImport
" jsStorageClass                   blue none
" jsClassKeyword                   blue none
" jsExtendsKeyword                 blue none
" jsThis                           yellow none
" goDirective                      aqua   none
" goConstants                      fg     none
" goDeclaration                    red    none
" goDeclType                       orange none
" goBuiltins                       orange none
" Background: light
" Color: bg0 #fffdf2 ~
" Color: bg1             #ede5d3    ~
" Color: bg2             #d8d1c0    ~
" Color: bg3             #b2a899    ~
" Color: bg4             #938b7f    ~
" Color: fg0             #2b2e30    ~
" Color: fg1             #373a3d    ~
" Color: fg2             #424749    ~
" Color: fg3             #4e5356    ~
" Color: fg4             #595f63    ~
" Color: grey            #919191    ~
" Color: red             #b5000f  203
" Color: green           #489600    ~
" Color: yellow          #eabf15    ~
" Color: blue            #0060af    ~
" Color: purple          #6436d8    ~
" Color: aqua            #00aaba    ~
" Color: orange          #d4b483    ~
"     Normal       fg1    none
"     CursorLineNr yellow none
"     FoldColumn   fg1    none
"     SignColumn   fg1    none
"     VertSplit    bg3    none
"     Normal       fg0    bg0
"     CursorLineNr yellow bg4
"     FoldColumn   fg1    bg1
"     SignColumn   fg0    bg2
"     VertSplit    fg1    bg2
" ColorColumn                      none   bg2
" Conceal                          blue   none
" Cursor                           none   none    reverse
" CursorColumn                  -> CursorLine
" CursorLine                       fg1    bg1
" DiffAdd                          green  bg0     reverse
" DiffChange                       aqua   bg0     reverse
" DiffDelete                       red    bg0     reverse
" DiffText                         yellow bg0     reverse
" Directory                        green  none
" EndOfBuffer                      orange none
" Error                            red    bg0     bold,reverse
" ErrorMsg                         bg0    red     bold
" Folded                           grey   bg1     g=italic
" IncSearch                        orange bg0     reverse
" LineNr                           fg2    none
" MatchParen                       none   blue    bold
" ModeMsg                          yellow none    bold
" MoreMsg                          yellow none    bold
" Noise                            bg4    none
" NonText                          orange none
" Pmenu                            orange bg1
" PmenuSbar                        none   bg3
" PmenuSel                         bg1    fg2     bold
" PmenuThumb                       none   bg4
" Question                         orange none    bold
" QuickFixLine                  -> Search
" Search                           yellow bg0     reverse
" SpecialKey                       yellow none
" SpellBad                         red    none    t=underline g=italic,undercurl s=red
" SpellCap                         blue   none    t=underline g=italic,undercurl s=blue
" SpellLocal                       aqua   none    t=underline g=italic,undercurl s=aqua
" SpellRare                        purple none    t=underline g=italic,undercurl s=purple
" StatusLine                       bg1    orange     reverse
" StatusLineNC                     bg1    orange
" StatusLineTerm                -> StatusLine
" StatusLineTermNC              -> StatusLineNC
" TabLine                       -> TabLineFill
" TabLineFill                      bg4    bg1
" TabLineSel                       green  bg1
" Title                            green  none    bold
" Visual                           bg1    fg2
" VisualNOS                     -> Visual
" WarningMsg                       red    none    bold
" WildMenu                         blue   bg2     bold
" Comment                          aqua   none    g=italic
" Constant                         purple none
" Debug                            red    none
" Delimiter                        red    none
" Error                            red    bg4     bold,reverse
" String                           green  none
" Ignore                           fg     none
" PreProc                          aqua    none
" Character                        aqua   none
" Number                           aqua   none
" Boolean                          aqua   none
" Float                            aqua   none
" Identifier                       fg     none
" Function                         orange none
" Statement                        red    none
" Type                             blue   none
" Special                          fg     none
" Todo                             purple   none
" Underlined                       blue   none    underline
" lCursor                       -> Cursor
" CursorIM                         none   none    reverse
" ToolbarLine          none              bg3
" ToolbarButton        fg0               bg3               bold
" xmlRegion                        none none
" xmlTag                           none none
" xmlTagName                       yellow none
" htmlTag                      ->  xmlTag
" htmlEndTag                   ->  htmlTag
" htmlTagName                  ->  xmlTagName
" htmlArg                          orange none
" xmlEndtag                        none none
" jsNoise                          bg4 none
" jsParens                         bg4 none
" jsBrackets                       bg4 none
" jsImport                         purple none
" jsExport                      -> jsImport
" jsFrom                        -> jsImport
" jsExportDefault               -> jsImport
" jsStorageClass                   blue none
" jsClassKeyword                   blue none
" jsExtendsKeyword                 blue none
" jsThis                           purple none
" goDirective                      orange   none
" goConstants                      blue     none
" goDeclaration                    purple    none
" goDeclType                       orange none
" goBuiltins                       orange none
