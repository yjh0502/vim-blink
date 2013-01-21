if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword     blinkNamespace      namespace

hi def link     blinkNamespace      Statement


syn keyword     blinkType           string bool object
syn keyword     blinkNumbers        u8 u8 i16 u16 i32 u32 i64 u64 f64 decimal

hi def link     blinkType           Type
hi def link     blinkNumbers        Type


syn match       blinkDecl           '->'
syn match       blinkDeclId         '\/\s*\d\+'

hi def link     blinkDecl           Keyword
hi def link     blinkDeclId         Keyword


syn match       blinkDeclDerivative ':\s*\a\+'

hi def link     blinkDeclDerivative Special


syn region      blinkComment        start="#" end="$" contains=@Spell
syn match       blinkAnnotation     '@\p\+=\(\("\p*"\|\'\p*\'\)\_s*\)\+'

hi def link     blinkComment        Comment
hi def link     blinkAnnotation     Comment

let b:current_syntax = "blink"
