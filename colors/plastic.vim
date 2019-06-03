" Name:         plastic.vim
" Description:  A vim theme inspired in VSCode themes Plastic and Onedark.vim
" Author:       Florian Prz
" Maintainer:   Florian Prz
" Website:      https://github.com/flrnprz/candid.vim/
" License:      Vim License (see `:help license`)
" Last Updated: Mon 03 Jun 2019 02:56:30 PM CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[plastic.vim] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'plastic'

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
hi typescriptBraces ctermfg=102 ctermbg=NONE guifg=#7c8696 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi typescriptImport ctermfg=203 ctermbg=NONE guifg=#e06c75 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link typescriptExport typescriptImport
hi! link typescriptEndColons typescriptBraces
hi! link typescriptParens typescriptBraces
hi! link typescriptSymbols typescriptBraces
hi! link typescriptClassKeyword jsStorageClass
hi! link typescriptClassExtends jsStorageClass
finish
