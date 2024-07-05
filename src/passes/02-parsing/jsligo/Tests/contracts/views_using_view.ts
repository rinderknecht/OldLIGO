type storage = int;

type parameter = | ["Default"];

const x = 0;

type return_ = [list<operation>, storage];

class C {
  @view
  basic = (_a: address, s: storage) : storage => x + s

  @view
  not_funny = (_: unit, s: storage) : storage =>
    basic(Tezos.get_sender(), x + s)

  @view
  get_storage = (_: unit, s: storage) : storage => x + s

  @view
  get_address = (_: unit, _s: storage) : address => Tezos.get_sender()

  @view
  super_not_funny = (_: unit, s: storage): storage =>
    not_funny(unit, s) + get_storage(unit, s);

  @entry
  main (action: parameter, _store: storage): return_ {
    return [[], (match(action, { Default: () => 0 }))]
  }
};
