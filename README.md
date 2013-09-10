ocaml-hll
=========

OCaml HyperLogLog

A L P H A

Some simple OCaml code to wrap @armon 's HLLD https://github.com/armon/hlld

Usage:
```ocaml
let hll = Ohll.hll_init 16;;
Ohll.hll_add hll "hi";;
Ohll.hll_add hll "bye";;
Ohll.hll_size hll;;
- : float = 2.00003051819896394
```

Currently only works on Linux A L P H A

Read more on HyperLogLog: http://blog.aggregateknowledge.com/2012/10/25/sketch-of-the-day-hyperloglog-cornerstone-of-a-big-data-infrastructure/
