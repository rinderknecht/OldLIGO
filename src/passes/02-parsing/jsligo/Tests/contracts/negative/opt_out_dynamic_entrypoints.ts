type storage =
  {
    storage : int;
    dynamic_entrypoints;
  }

const two = (_u1: unit, _u2: unit) : [list<operation>, unit] => {
  let _i = 1;
  (External `OPT_OUT_ENTRY`)
};

class C {
  @entry
  nope = (_u: unit, _storage: storage) : [list<operation>, storage] =>
    failwith ()
};
