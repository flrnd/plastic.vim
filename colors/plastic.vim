" Name:         plastic.vim
" Description:  VSCode Plastic theme vim/neovim port
" Author:       Florian Prz
" Repository:   https://github.com/flrnprz/plastic.vim/
" License:      The MIT License (MIT)
" Last Updated: Mon 03 Jun 2019 17:31:30 PM CEST

" Init {{{
scriptencoding utf-8

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'plastic'

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
fun! <sid>hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
endif
endfun
"}}}

" colors definition {{{

let s:red = {'gui': '#e06c75', 'cterm256': '204'}
let s:green = { 'gui': '#98c379', 'cterm256': '114'}
let s:yellow = { 'gui': '#e5c07b', 'cterm256': '180'}
let s:whisky = { 'gui': '#d19a66', 'cterm256': '173' }
let s:blue = { 'gui': '#61afef', 'cterm256': '39'}
let s:purple = { 'gui': '#af98e6', 'cterm256': '170'}
let s:aqua = { 'gui': '#56b6c2', 'cterm256': '38'}
let s:white = { 'gui': '#d7d7d7', 'cterm256': '145'}
let s:black = { 'gui': '#181a1f', 'cterm256': '234'}
let s:visual_black = { 'gui': 'NONE', 'cterm256': 'NONE'}
let s:background = {'gui': '#21252b', 'cterm256': '235'}
let s:grey = { 'gui': '#abb2bf', 'cterm256': '59' }
let s:punctuation = { 'gui': '#7c8696', 'cterm256': '238' }
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" }}}

"--------------------
" Syntax Definitions
"--------------------
" <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call <sid>hi('Normal', s:white, s:background, 'none', {})

"" UI {{{
call <sid>hi('Cursor', s:none, s:none, 'reverse', {})
hi link lCursor Cursor
hi link CursorIM Cursor
call <sid>hi('CursorLine', s:white, s:background, 'none', {})
call <sid>hi('EndOfBuffer', s:whisky, s:none, 'none', {})
call <sid>hi('Conceal', s:blue, s:none, 'none', {})
call <sid>hi('CursorColumn', s:none, s:blue, 'none', {})
call <sid>hi('ColorColumn', s:none, s:background, 'none', {})
call <sid>hi('FoldColumn', s:punctuation, s:background, 'none', {})
call <sid>hi('SignColumn', s:none, s:background, 'none', {})
call <sid>hi('VertSplit', s:grey, s:black, 'none', {})
call <sid>hi('LineNr', s:yellow, s:background, 'none', {})
call <sid>hi('CursorLineNr', s:punctuation, s:background, 'none', {})

call <sid>hi('DiffAdd', s:black, s:green, 'none', {})
call <sid>hi('DiffChange', s:black, s:purple, 'none', {})
call <sid>hi('DiffDelete', s:black, s:red, 'none', {})
call <sid>hi('DiffText', s:black, s:aqua, 'none', {})

call <sid>hi('ErrorMsg', s:red, s:background, 'bold', {})
call <sid>hi('ModeMsg', s:yellow, s:none, 'bold', {})
call <sid>hi('MoreMsg', s:aqua, s:none, 'bold', {})
call <sid>hi('WarningMsg', s:whisky, s:none, 'italic', {})
call <sid>hi('Noise', s:punctuation, s:none, 'none', {})
call <sid>hi('NonText', s:whisky, s:none, 'none', {})
call <sid>hi('Folded', s:grey, s:none, 'none', {})
call <sid>hi('IncSearch', s:yellow, s:black, 'none', {})
call <sid>hi('Search', s:yellow, s:background, 'reverse', {})

call <sid>hi('Pmenu', s:none, s:black, 'none', {})
call <sid>hi('PmenuSel', s:black, s:white, 'none', {})

call <sid>hi('Question', s:white, s:background, 'bold', {})
call <sid>hi('MatchParen', s:blue, s:none, 'bold', {})
call <sid>hi('Directory', s:white, s:background, 'bold', {})
call <sid>hi('QuickFixLine', s:black, s:yellow, 'none', {})

call <sid>hi('SpecialKey', s:purple, s:none, 'none', {})
call <sid>hi('SpellBad', s:red, s:none, 'undercurl', s:red)
call <sid>hi('SpellCap', s:none, s:none, 'undercurl', {})
call <sid>hi('SpellLocal', s:none, s:none, 'undercurl', {})
call <sid>hi('SpellRare', s:none, s:none, 'undercurl', {})

call <sid>hi('StatusLine', s:white, s:black, 'none', {})
call <sid>hi('StatusLineNC', s:white, s:black, 'none', {})
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

call <sid>hi('TabLine', s:white, s:black, 'none', {})
hi link TabLineFill TabLine
call <sid>hi('TabLineSel', s:whisky, s:black, 'none', {})

call <sid>hi('Title', s:white, s:none, 'none', {})
call <sid>hi('Visual', s:black, s:white, 'none', {})
hi link VisualNOS Visual
call <sid>hi('TabLine', s:white, s:black, 'none', {})
call <sid>hi('WildMenu', s:black, s:white, 'bold', {})
"}}}

"----------------------------------------------------
" Syntax groups and naming convenions
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"----------------------------------------------------
" {{{
call <sid>hi('Comment', s:grey, s:none, 'italic', {})

call <sid>hi('Constant', s:aqua, s:none, 'none', {})
call <sid>hi('String', s:green, s:none, 'none', {})
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Number

call <sid>hi('Identifier', s:white, s:none, 'none', {})
call <sid>hi('Function', s:whisky, s:none, 'none', {})

call <sid>hi('Statement', s:red, s:none, 'none', {})
hi link Conditional Statement

call <sid>hi('PreProc', s:aqua, s:none, 'none', {})

call <sid>hi('Type', s:blue, s:none, 'none', {})

call <sid>hi('Special', s:punctuation, s:none, 'none', {})

call <sid>hi('Underlined', s:blue, s:none, 'underline', {})

call <sid>hi('Ignore', s:none, s:none, 'none', {})

call <sid>hi('Error', s:red, s:black, 'undercurl', {})

call <sid>hi('Todo', s:aqua, s:none, 'italic', {})

"}}}

"--------------------------
" Language specific syntax
"--------------------------

"" xml & html {{{
call <sid>hi('xmlRegion', s:none, s:none, 'none', {})
hi link xmlTag xmlRegion
call <sid>hi('xmlTagName', s:yellow, s:none, 'none', {})
call <sid>hi('xmlEndTag', s:none, s:none, 'none', {})
hi link htmlTag xmlTag
hi link htmlEndTag htmlTag
hi link htmlTagName xmlTagName
call <sid>hi('htmlArg', s:whisky, s:none, 'none', {})
call <sid>hi('htmlTitle', s:white, s:none, 'none', {})
"}}}

