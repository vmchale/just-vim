" quit when a syntax file was already loaded
if exists('b:current_syntax')
  finish
endif

syntax region justCommand start=' ( *)' end='$' contains='variable'

syn match specialChar '@'

syntax region justLabel start='[A-Za-z]' end=':$' contains=justVarName

syntax region justVarLocal start='{{' end='}}' contains=justVarName

syntax match justVarName '\v[A-Z]'
syntax match justComment '\v^#.*$'

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link specialChar Special
hi def link justComment Comment
hi def link justCommand String
hi def link justLabel Identifier

let b:current_syntax = 'just'
