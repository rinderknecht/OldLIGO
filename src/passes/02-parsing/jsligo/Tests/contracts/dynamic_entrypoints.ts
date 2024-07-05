type storage = {
  storage : int;
  dynamic_entrypoints;
}

class C {
  @dyn_entry
  one = (_u: unit, _i: int): [list<operation>, int] => [[], 1];

  @dyn_entry
  tick = (_t : ticket<int>, x : [int, int]) : [list<operation>, [int, int]] => [[], x];

  @entry
  call_one = (_u:unit, s : storage) : [list<operation>, storage] =>
    match (Dynamic_entrypoints.get(one, s.dynamic_entrypoints), {
      Some: (f) => (() => {
       const [op, storage] = f([], s.storage);
       return [op, ({...s, storage})]
      })(),
      None: () => failwith(-1),
    })

  @entry
  call_tick = (p : ticket<int>, s : storage) : [list<operation>, storage] =>
    match (Dynamic_entrypoints.get(tick, s.dynamic_entrypoints), {
      Some: (f) => (() => {
        const [op, [i1, i2]] = f(p, [s.storage, 0]);
        return [op, ({...s, storage: i1 + i2})]
      })(),
      None: () => failwith(-1),
    })

  @entry
  set_one = (one_v2 : entrypoint<unit, int>, s : storage) : [list<operation>, storage] => {
    const dynamic_entrypoints =
      Dynamic_entrypoints.set(one, (Some(one_v2)), s.dynamic_entrypoints);
    return [[], {...s, dynamic_entrypoints}]
  }
};
