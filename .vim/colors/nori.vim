" tir_black color scheme
" Based on ir_black from: http://blog.infinitered.com/entries/show/8
" adds 256 color console support
" changed WildMenu color to be the same as PMenuSel

set background=dark
hi clear

if exists("syntax_on")
 syntax reset
endif

" General colors

hi Normal ctermfg=white ctermbg=0
hi NonText ctermfg=232 ctermbg=0

hi Cursor ctermfg=0 ctermbg=15
hi LineNr ctermfg=239 ctermbg=0

hi VertSplit ctermfg=235 ctermbg=235
hi StatusLine ctermfg=235 ctermbg=255
hi StatusLineNC ctermfg=235 ctermbg=243

hi Folded ctermfg=103 ctermbg=60
hi Title ctermfg=187
hi Visual ctermbg=60

hi SpecialKey ctermfg=8 ctermbg=236

hi WildMenu ctermfg=0 ctermbg=195
hi PmenuSbar ctermfg=0 ctermbg=15

hi Error gui=undercurl ctermfg=203 ctermbg=none cterm=underline guisp=#FF6C60
hi ErrorMsg ctermfg=white ctermbg=203
hi WarningMsg ctermfg=white ctermbg=203

hi ModeMsg ctermfg=0 ctermbg=189

if version >= 700 " Vim 7.x specific colors
 hi CursorLine gui=none ctermbg=234 cterm=none
 hi CursorColumn gui=none ctermbg=234 cterm=none
 hi MatchParen ctermfg=white ctermbg=darkgray
 hi Pmenu ctermfg=white ctermbg=242
 hi PmenuSel ctermfg=0 ctermbg=195
 hi Search ctermfg=0 ctermbg=195
endif

" Syntax highlighting

hi Comment ctermfg=8
hi String ctermfg=34
hi Number ctermfg=34

hi Keyword ctermfg=117
hi PreProc ctermfg=117
hi Conditional ctermfg=117

hi Todo ctermfg=0 ctermbg=195
hi Constant ctermfg=151

hi Identifier ctermfg=189
hi Function ctermfg=223
hi Type ctermfg=229
hi Statement ctermfg=117

hi Special ctermfg=173
hi Delimiter ctermfg=37
hi Operator ctermfg=117

hi link Character Constant
hi link Boolean Constant
hi link Float Number
hi link Repeat Statement
hi link Label Statement
hi link Exception Statement
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi link Tag Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Ruby

hi rubyRegexp ctermfg=brown
hi rubyRegexpDelimiter ctermfg=brown
hi rubyEscape ctermfg=cyan
hi link rubyStringDelimiter String
hi link rubyInterpolationDelimiter String
hi link rubyControl Keyword
hi link rubyClass Keyword
hi link rubyModule Keyword
hi link rubyKeyword Keyword
hi link rubyOperator Operator
hi link rubyIdentifier Identifier
hi link rubyInstanceVariable Identifier
hi link rubyGlobalVariable Identifier
hi link rubyClassVariable Identifier
hi link rubyConstant Type

" Special for XML

hi link xmlTag Keyword
hi link xmlTagName Conditional
hi link xmlEndTag Identifier

" Special for HTML
hi link htmlTag Keyword
hi link htmlTagName Conditional
hi link htmlEndTag Identifier

" Special for Javascript
hi link javaScriptNumber Number

