ocaml-hll
=========

OCaml HyperLogLog

A L P H A

Some simple OCaml code to wrap the core HLL data structure in @armon 's HLLD https://github.com/armon/hlld

A HyperLogLog is a probabilistic data structure that allows for approximate set membership counting.
For instance, you want to track the number of unique user ids you've seen in an application that processes streams
of data and you want to do so in bounded memory.

HLLD is a server (not unlike Redis) for the storage and querying of HyperLogLogs.
This library on the other hand allows you to use HyperLogLogs in OCaml but stores them only in memory
and does not query HLLD or otherwise open network connections.

Usage:
```ocaml
let hll = Ohll.hll_init 16;;
Ohll.hll_add hll "hi";;
Ohll.hll_add hll "bye";;
Ohll.hll_size hll;;
- : float = 2.00003051819896394
```

Currently only works on Linux .

Have a look at hll_merge to compute set unions of two hlls.

Like I said: A L P H A

See: https://github.com/travisbrady/ocaml-hll/blob/master/src/ohll_test.ml for more basic usage

Read more on HyperLogLog: http://blog.aggregateknowledge.com/2012/10/25/sketch-of-the-day-hyperloglog-cornerstone-of-a-big-data-infrastructure/

### Installation
Do the usual thing
```bash
$ ocaml setup.ml -configure
$ ocaml setup.ml -build
$ ocaml setup.ml -install
```
