" =============================================================================
" Filename: autoload/lightline/colorscheme/candid.vim
" Author: Flrn Prz
" License: MIT License
" =============================================================================
let s:base03 = [ '#181a1f', 233 ]
let s:base02 = [ '#21252b ', 236 ]
let s:base01 = [ '#2b3038', 239 ]
let s:base00 = [ '#556166', 242  ]
let s:base0 = [ '#6e797f', 244 ]
let s:base1 = [ '#839393', 246 ]
let s:base2 = [ '#97a8a8', 248 ]
let s:base3 = [ '#d3e4e8', 253 ]
let s:yellow = [ '#e5c07b', 3 ]
let s:orange = [ '#d19a66', 216 ]
let s:red = [ '#e06c75', 131 ]
let s:magenta = [ '#af98e6', 168 ]
let s:peach = [ '#d19a66', 181 ]
let s:blue = [ '#61afef', 109 ]
let s:cyan = [ '#56b6c2', 23 ]
let s:green = [ '#98c379', 108 ]
let s:white = [ '#a9b2c3', 252 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base1 ], [ s:base2, s:base01 ] ]
let s:p.inactive.right = [ [ s:base02, s:base00 ], [ s:base0, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base0, s:base02 ], [ s:base00, s:base02 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:peach ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base0, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base00, s:base02 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle = [ [ s:base01, s:base1 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:base02 ] ]
let s:p.normal.warning = [ [ s:yellow, s:base01 ] ]

let g:lightline#colorscheme#candid#palette = lightline#colorscheme#flatten(s:p)
