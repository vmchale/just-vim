" quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

syntax region justCommand start='\v^( ( *))' end='\v$' contains=justVarLocal,specialChar

syn match specialChar '@'

syntax region justLabel start='\v[A-Za-z]' end='\v(:|$)' contains=justVarName

syntax region justVarLocal start='{{' end='}}' contains=justVarName

syntax match justVarName '\v[A-Z]'
syntax match justComment '\v^#.*$'

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link specialChar Special
hi def link justComment Comment
hi def link justCommand String
hi def link justLabel Keyword
hi def link justVarLocal Identifier
hi def link justVarName Identifier

let b:current_syntax = 'just'
