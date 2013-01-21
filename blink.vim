if exists("b:current_syntax")
  finish
endif

syn case match

syn keyword     blinkNamespace      namespace

hi def link     blinkNamespace      Statement


syn keyword     blinkType           string
syn keyword     blinkNumbers        u8 u8 i16 u16 i32 u32 i64 u64 f64 decimal

hi def link     blinkType           Type
hi def link     blinkNumbers        Type

let b:current_syntax = "blink"
