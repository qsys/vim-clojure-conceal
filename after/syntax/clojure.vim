" File:         clojure.vim (conceal enhancement)
" Author:       Filip Wolanski <wolanski@gmail.com>
"               Kurt Sys <kurt.sys@gmail.com>
" Last Change:  2016-02-24
" Version:      1.0.0
" Require:
"   set nocompatible
"     somewhere on your .vimrc
"
"   Vim 7.3 or Vim compiled with conceal patch.
"

if !has('conceal') || &enc != 'utf-8'
   finish
endif

if !exists('g:clojure_concealwords')
   let g:clojure_concealwords="def fn defn- letfn defmethod"
endif

if !exists('g:clojure_conceal_extras')
   syntax keyword clocealLambda defn conceal cchar=λ
else
   exec 'syntax keyword clocealLambda ' . g:clojure_concealwords . ' conceal cchar=λ'
   exec 'syntax match clocealLambda /\v#\(/me=e-1 conceal cchar=λ'
endif
hi link clocealLambda Define


exec 'syntax keyword clocealAnd and conceal cchar=∧' 
exec 'syntax keyword clocealOr or conceal cchar=∨' 
exec 'syntax keyword clocealNot not conceal cchar=¬' 
hi link clocealAnd Define
hi link clocealOr Define
hi link clocealNot Define

exec 'syntax keyword clocealArrRight -> conceal cchar=›' 
exec 'syntax keyword clocealDoubleArrRight ->> conceal cchar=»' 
hi link clocealArrRight Define
hi link clocealDoubleArrRight Define

exec 'syntax keyword clocealDef def conceal cchar=≡' 
hi link clocealDef Define

exec 'syntax keyword clocealLet let conceal cchar=┝' 
hi link clocealLet Define


hi! link Conceal Define

setlocal conceallevel=1
setlocal concealcursor=c
