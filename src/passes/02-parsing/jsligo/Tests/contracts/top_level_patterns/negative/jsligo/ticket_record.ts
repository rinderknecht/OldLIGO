type t = { b: ticket<string> };

const { b } = { b: Option.value_with_error("option is None", Tezos.Next.Ticket.create("one", 10 as nat)) };

type storage = ticket<string>;

class C {
  @entry
  main = (_p: unit, _s: storage): [list<operation>, storage] =>
  [[], Option.value_with_error("option is None", Tezos.Next.Ticket.join([b, b]))];
};
