type storage =
  {
    storage : int;
    dynamic_entrypoints;
    extra : int
  }

class C {
  @entry
  foo = (_u : unit, _storage : storage) : [list<operation>, storage] =>
    failwith ()
};
