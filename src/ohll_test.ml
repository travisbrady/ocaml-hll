let names = ["bob"; "sally"; "rex"; "juanita"; "ansbert"; "myrtle";
             "hubert"; "drambert"; "hambert"; "qualbert"; "akbert"]

let test_merge() = 
    let ah = Ohll.hll_init 12 in
    let bh = Ohll.hll_init 12 in
    let _a = ["a"; "b"; "c"; "d"; "e"] in

    let _b = ["d"; "e"; "f"; "g"; "h"] in
    List.iter (fun x -> Ohll.hll_add ah x) _a;
    List.iter (fun x -> Ohll.hll_add bh x) _b;

    let mmh = Ohll.hll_merge ah bh in
    Ohll.hll_size mmh

let () =
    let h = Ohll.hll_init 12 in

    List.iter (fun x -> Ohll.hll_add h x) names;
    Printf.printf "ListSize: %d HLLSize: %f\n" (List.length names) (Ohll.hll_size  h)
