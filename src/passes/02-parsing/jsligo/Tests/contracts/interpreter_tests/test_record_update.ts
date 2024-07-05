export type storage = {
  a : int;
  b : bool;
  c : string;
};


// Storage list
let l1 = list([
  {a : 1, b : true, c : "foo"},
  {a : 2, b : false, c : "bar"},
  {a : 3, b : true, c : "baz"},
]);

let l2 = list([
  {a : 1, b : true, c : "foo"},
  {a : 2, b : false, c : "bar"},
  {a : 3, b : true, c : "baz"},
]);

let new_storage = {a : 4, b : false, c : "new"};

let l_copy = list([{...new_storage,} as storage]);

class C {
  @entry
  main = (_ : int, s : int) : [list<operation>, int] => [[], s]
};