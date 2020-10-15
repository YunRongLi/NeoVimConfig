let g:tagbar_width = 30
let g:tagbar_ctags_bin = 'ctags'
nnoremap <silent> <leader>bb : TagbarToggle<CR>

let g:tagbar_type_cpp = {
    \ 'ctagstype' : 'c++',
    \ 'kinds'     : [
        \ 'd:macros:1:0',
        \ 'p:prototypes:1:0',
        \ 'g:enums',
        \ 'e:enumerators:0:0',
        \ 't:typedefs:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:variables:0:0'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum'      : 'g',
        \ 'namespace' : 'n',
        \ 'class'     : 'c',
        \ 'struct'    : 's',
        \ 'union'     : 'u'
    \ }
\ }

let g:tagbar_type_go = { 
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [ 
        \ 'p:package', 
        \ 'i:imports:1', 
        \ 'c:constants', 
        \ 'v:variables', 
        \ 't:types', 
        \ 'n:interfaces', 
        \ 'w:fields', 
        \ 'e:embedded', 
        \ 'm:methods', 
        \ 'r:constructor', 
        \ 'f:functions'
    \ ], 
    \ 'sro'        : '.', 
    \ 'kind2scope' : { 
        \ 't' : 'ctype', 
        \ 'n' : 'ntype' 
    \ }, 
    \ 'scope2kind' : { 
        \ 'ctype' : 't', 
        \ 'ntype' : 'n' 
    \ }, 
    \ 'ctagsbin'  : 'gotags', 
    \ 'ctagsargs' : '-sort -slient' 
\ }
