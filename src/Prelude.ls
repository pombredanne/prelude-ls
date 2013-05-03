require! [
  './Func.js'
  './List.js'
  './Obj.js'
  './Str.js'
  './Num.js'
]

id = (x) -> x

to-bool = (x) -> !!x

to-number = (x) -> +x

to-int = (x) -> parse-int x, 10

to-float = (x) -> parse-float x

to-string = (x) -> '' + x

to-func = (obj) -> (obj.)

is-type = (type, x) --> typeof! x is type

compare = (f, x, y) -->
  if (f x) > (f y)
    1
  else if (f x) < (f y)
    -1
  else
    0

replicate = (n, x) -->
  [x for til n]


Str <<< List{
  slice, take, drop, split-at, take-while, drop-while, span, break-str: break-list
}

prelude = {
  Func, List, Obj, Str, Num,
  id, is-type
  replicate, compare,
}
prelude <<< List{
  each, map, filter, compact, reject, partition, find,
  head, first, tail, last, initial, empty,
  reverse, difference, intersection, union, count-by, group-by,
  fold, fold1, foldl, foldl1, foldr, foldr1, unfoldr, and-list, or-list,
  any, all, unique, sort, sort-with, sort-by, sum, product, mean, average,
  concat, concat-map, flatten,
  maximum, minimum, scan, scan1, scanl, scanl1, scanr, scanr1,
  slice, take, drop, split-at, take-while, drop-while, span, break-list,
  zip, zip-with, zip-all, zip-all-with,
}
prelude <<< Func{
  curry, flip, fix, apply,
}
prelude <<< Str{
  split, join, lines, unlines, words, unwords, chars, unchars
}
# not importing all of Obj's functions
prelude <<< Obj{
  values, keys,
  pairs-to-obj, obj-to-pairs, lists-to-obj, obj-to-lists,
}
prelude <<< Num{
  max, min, negate, abs, signum, quot, rem, div, mod, recip,
  pi, tau, exp, sqrt, ln, pow, sin, tan, cos, acos, asin, atan, atan2,
  truncate, round, ceiling, floor, is-it-NaN, even, odd, gcd, lcm,
}

prelude.VERSION = '0.7.0-dev'

module.exports = prelude
