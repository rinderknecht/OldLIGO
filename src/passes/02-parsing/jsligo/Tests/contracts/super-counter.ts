type parameter =
| ["Increment", int]
| ["Decrement", int];

type storage = int;

type return_ = [list <operation>, storage];

let main = (action : parameter, store: storage) : return_ => {
  let storage = match (action, {
    Increment: (n) => store + n,
    Decrement: (n) => store - n});
  return [([] as list <operation>), storage];
};
