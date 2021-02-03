" Default syntax
" Customizing:
" to change the highlighting of a group add this to your vimrc.
"
" E.g. Change Preprocessor skipped regions to red bold text
" hi LspCxxHlSkippedRegion cterm=Red guifg=#FF0000 cterm=bold gui=bold
"
" E.g. Change Variables to be highlighted as Identifiers
" hi link LspCxxHlSymVariable Identifier


" Preprocessor Skipped Regions:
"
" This is used for false branches of #if or other preprocessor conditions
hi default link LspCxxHlSkippedRegion Comment

" This is the first and last line of the preprocessor regions
" in most cases this contains the #if/#else/#endif statements
" so it is better to let syntax do the highlighting.
hi default link LspCxxHlSkippedRegionBeginEnd Normal


" Syntax Highlighting:
"
" Custom Highlight Groups
"if g:lsp_cxx_hl_light_bg
"    hi default LspCxxHlGroupEnumConstant ctermfg=Magenta guifg=#573F54 cterm=none gui=none
"    hi default LspCxxHlGroupNamespace ctermfg=Yellow guifg=#3D3D00 cterm=none gui=none
"    hi default LspCxxHlGroupMemberVariable ctermfg=Black guifg=Black
"else
"    hi default LspCxxHlGroupEnumConstant ctermfg=Magenta guifg=#AD7FA8 cterm=none gui=none
"    hi default LspCxxHlGroupNamespace ctermfg=Yellow guifg=#BBBB00 cterm=none gui=none
"    hi default LspCxxHlGroupMemberVariable ctermfg=White guifg=White
"endif

hi default link LspCxxHlSymUnknown Normal

" Type
hi default link LspCxxHlSymClass Class
hi default link LspCxxHlSymStruct Class
hi default link LspCxxHlSymEnum Class
hi default link LspCxxHlSymTypeAlias Typedef
hi default link LspCxxHlSymTypeParameter Class

" Function
hi default link LspCxxHlSymFunction Function
hi default link LspCxxHlSymMethod Method
hi default link LspCxxHlSymStaticMethod StaticMethod
hi default link LspCxxHlSymConstructor Class

" EnumConstant
hi default link LspCxxHlSymEnumMember EnumMember

" Preprocessor
hi default link LspCxxHlSymMacro Macro

" Namespace
hi default link LspCxxHlSymNamespace Namespace

" Variables
hi default link LspCxxHlSymVariable Variable
hi default link LspCxxHlSymParameter Argument
hi default link LspCxxHlSymField Field

" clangd-only groups
" A constexpr qualified variable
hi default link LspCxxHlSymConstexprVariable ConstexprVariable
" A local variable
hi default link LspCxxHlSymLocalVariable LocalVariable
" A static member variable
hi default link LspCxxHlSymStaticField StaticField
" Seems to be when a type alias refers to a primitive
hi default link LspCxxHlSymPrimitive Primitive
" Equivalent to TypeAlias
hi default link LspCxxHlSymTypedef Typedef
" Equivalent to TypeParameter
hi default link LspCxxHlSymTemplateParameter Class
" Non-type template parameter
hi default link LspCxxHlSymNonTypeTemplateParameter ConstexprVariable
" Equivalent to EnumMember
hi default link LspCxxHlSymEnumConstant EnumMember
" A type dependent on a template
" E.g. T::A, A would be a dependent type
hi default link LspCxxHlSymDependentType Class
" A name dependent on a template, usually a function but can also be a variable?
hi default link LspCxxHlSymDependentName Function
" C++20 concepts, maybe type is sufficient for now...
hi default link LspCxxHlSymConcept Class
