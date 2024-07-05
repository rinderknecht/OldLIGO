type storage = int;

type parameter =
| ["Increment", int]
| ["Decrement", int];

let add = (a: int, b: int): int => a + b;
let sub = (a: int, b: int): int => a - b;

let main = (action : parameter, store : storage): [list <operation>, storage] => {
  let store2 = match(action, {
    Increment: (value) => add (store, value),
    Decrement: (value) => sub (store, value),
  });
  return [([] as list <operation>), store2];
};
