open Core.Std
open Printf

let build_hll () =
    let hll = Ohll.hll_init 12 in
    In_channel.fold_lines stdin ~init:hll ~f:(fun h line ->
        Ohll.hll_add h line;
        h
    )

let () =
    let hll = build_hll() in
    let size = Ohll.hll_size hll in
    printf "HLL Size: %f\n" size;

