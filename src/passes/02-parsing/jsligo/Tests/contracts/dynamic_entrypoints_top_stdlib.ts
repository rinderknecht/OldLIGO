export type storage = {
  storage: unit;
  dynamic_entrypoints
};

type return_ = [list<operation>, storage];

class C {
  @dyn_entry
  poke = (_: unit, store: storage): return_ => {
    let _a = Tezos.get_balance();
    return [[], store];
  };

  @entry
  bar = (_: unit, store: storage): return_ => {
    let _a = Tezos.get_balance();
    return [[], store];
  };
};
