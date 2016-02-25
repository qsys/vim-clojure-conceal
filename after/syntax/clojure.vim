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
   let g:clojure_concealwords="def defn- defmethod"
endif

if !exists('g:clojure_conceal_extras')
   syntax keyword clocealLambda defn conceal cchar=λ
else
	exec 'syntax keyword clocealLambda fn letfn conceal cchar=λ'
   exec 'syntax match clocealLambda /\v#\(/me=e-1 conceal cchar=λ'
   exec 'syntax keyword clocealLambda defn defn- defmethod conceal cchar=⨍'
	exec 'syntax keyword clocealLambda partial conceal cchar=℘'
endif
hi link clocealLambda Define

exec 'syntax keyword clocealDef def conceal cchar=≡' 
hi link clocealDef Define

exec 'syntax keyword clocealLet let conceal cchar=┝' 
hi link clocealLet Define

exec 'syntax match clocealColl /\v#\{/me=e-1 conceal cchar=∈'
hi link clocealColl Define

exec 'syntax keyword clocealLogic and conceal cchar=∧' 
exec 'syntax keyword clocealLogic or conceal cchar=∨' 
exec 'syntax keyword clocealLogic not conceal cchar=¬' 
hi link clocealLogic Define

exec 'syntax keyword clocealFunctions comp conceal cchar=∘' 
exec 'syntax keyword clocealFunctions doseq conceal cchar=∀' 
hi link clocealFunctions Define

exec 'syntax keyword clocealForall recur conceal cchar=┅' 
hi link clocealRecur Define

exec 'syntax keyword clocealArr -> conceal cchar=›' 
exec 'syntax keyword clocealArr ->> conceal cchar=»' 
hi link clocealArr Define

exec 'syntax keyword clocealConditional when conceal cchar=◊' 
exec 'syntax keyword clocealConditional if conceal cchar=◇' 
hi link clocealConditional Define


hi! link Conceal Define

setlocal conceallevel=1
setlocal concealcursor=c
