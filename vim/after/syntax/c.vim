syn keyword cType u8 u16 u32 u64 s8 s16 s32 s64 r32 r64 b32 umm int32 int64 uint32 uint8 uint16 uint32 uint64 int8 int16 int32 int64 float32 float64

"match '_t'
syn match cType "\<[a-zA-Z_][a-zA-Z0-9_]*_[t]\>"
