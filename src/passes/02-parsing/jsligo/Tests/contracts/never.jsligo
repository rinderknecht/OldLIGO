type parameter = ["Increment", int] | ["Extend", never];

type storage = int;

class Never {
  @entry
  main = (action: parameter, store: storage): [list<operation>, storage] => {
    return [
      [],
      (match(action, {
        Increment: (n) => store + n,
        Extend: (k) => (Tezos.never(k) as storage),
      }))
    ]}
};
