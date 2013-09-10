#include <stdio.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include <caml/mlvalues.h>

#include "hll.h"

CAMLprim value
caml_hll_init(value precision) {
    hll_t *hll = malloc(sizeof(hll_t));
    int res = hll_init(Int_val(precision), hll);
    return (value)hll;
}

CAMLprim value
caml_hll_destroy(value hll) {
    hll_t *_hll = (hll_t*)hll;
    int res = hll_destroy(_hll);
    return (value)res;
}

CAMLprim value
caml_hll_add(value hll, value key) {
    hll_t *_hll = (hll_t*)hll;
    hll_add(_hll, String_val(key));
    return Val_unit;
}

CAMLprim value
caml_hll_size(value hll) {
    hll_t *_hll = (hll_t*)hll;
    double size = hll_size(_hll);
    return caml_copy_double(size);
}

CAMLprim value
caml_hll_merge(value hll_a, value hll_b) {
    hll_t *_hll_a= (hll_t*)hll_a;
    hll_t *_hll_b= (hll_t*)hll_b;

    hll_t *merged_hll = malloc(sizeof(hll_t));
    int _init_res = hll_init(_hll_a->precision, merged_hll);
    int _merge_res = hll_merge(_hll_a, _hll_b, merged_hll);
    return (value)merged_hll;
}
