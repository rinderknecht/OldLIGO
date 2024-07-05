type action_t = // @layout("comb")
    | ["A"]
    | ["B", int]
    | ["C", [int, int]];

type storage_t = // @layout("comb")
{
  x: int;
  y: int;
  z: int;
};

type return_t = [list<operation>, storage_t];

class C {
  @entry
  main = (action: action_t, _: storage_t): return_t =>
    [
      [],
      match(action, {
        A: () => ({ x: 10, y: 10, z: 10 }),
        B: (_) => ({ x: 20, y: 20, z: 20 }),
        C: (_) => ({ x: 20, y: 20, z: 20 }),
      })
    ];
};
