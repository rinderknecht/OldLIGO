type storage =
  {
    storage : int;
    dynamic_entrypoints;
  }

export class C {
  @dyn_entry
  one = (_unit: unit, _int: int): [list<operation>, int] => [[], 1];

  @dyn_entry
  two = (External `OPT_OUT_ENTRY` as ((x:ticket<int>, y:[int, int]) =>
    [list<operation>, [int, int]]))

  @dyn_entry
  three = (_u : unit, _i : int) : [list<operation>, int] => [[], 3]

  @dyn_entry
  four = (External `OPT_OUT_ENTRY` as (entrypoint<int, nat>))

  @entry
  nope = (_u : unit, _s : storage) : [list<operation>, storage] => failwith ()
};
