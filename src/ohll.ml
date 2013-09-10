
type hll
external hll_init: int -> hll = "caml_hll_init"
external hll_destroy: hll -> int = "caml_hll_destroy"
external hll_add: hll -> string -> unit = "caml_hll_add"
external hll_size: hll -> float = "caml_hll_size"
external union: hll -> hll -> hll = "caml_union"
external hll_merge: hll -> hll -> hll = "caml_hll_merge"
