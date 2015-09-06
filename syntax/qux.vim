" Vim syntax file
" Language:         Qux
" Maintainer:       Henry J. Wylde
" URL:              https://github.com/qux-lang/vim-qux/
" Latest Revision:  2015-09-06
" Filenames:        *.qux
" Version:          0.1.0.0

if exists("b:current_syntax")
    finish
endif


" Options

let foldmethod='indent'


" Errors

syn match errors '.'

hi def link errors error


" Comments

syn region commentBlock start='/\*' end='\*/' keepend contains=todos,@Spell

syn region commentLine  start='#' end='$' keepend contains=todos,@Spell

hi def link commentBlock    comment
hi def link commentLine     comment


" Constants

syn keyword bools false true
syn keyword values nil

syn match nat '\d\+'
syn match nat '0o\o\+'
syn match nat '0x\x\+'

hi def link bools   boolean
hi def link nat     number
hi def link values  constant


" Identifiers

syn match functions '[a-z_][\w']*'

hi def link functions function


" Statements

syn keyword conditionals else if
syn keyword keywords return
syn keyword repeats while

syn match operators '!!'
syn match operators '|'
syn match operators '[*/%+-]'
syn match operators '[<>]'
syn match operators '<='
syn match operators '>='
syn match operators '=='
syn match operators '!='

hi def link conditionals    conditional
hi def link keywords        keyword
hi def link operators       operator
hi def link repeats         repeat


" Types

syn keyword types Bool Int Nil

hi def link types type


" Specials

syn match delimiters '(\|)\|\[\|\]\|,\|:\|->'
syn match underscore '_'

hi def link delimiters delimiter
hi def link underscore delimiter


" Todos

syn keyword todos contained TODO FIXME

hi def link todos todo


let b:current_syntax = 'qux'

