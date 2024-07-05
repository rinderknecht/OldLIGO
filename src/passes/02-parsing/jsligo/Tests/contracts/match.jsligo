type storage = int;

type parameter =
| ["Add", int]
| ["Sub", int];

type return_ = [list <operation>, storage];

let main = (action : parameter, store: storage) : return_ => {
  let store2 =
    store +
      (match (action, {
        Add: (n) => n,
        Sub: (n) => -n,
      }));
  return [([] as list <operation>), store2];
};
