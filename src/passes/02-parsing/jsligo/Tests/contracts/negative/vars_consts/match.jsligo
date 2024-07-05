type parameter =
| ["Add", int]
| ["Sub", int];

let main = ([action, store]: [parameter, int]) : int => {
  let store2 = match (action, {
    Add: (n) => (() => { n = 42; return n; })(),
    Sub: (n) => (() => { n = 42; return -n; })(),
  });
  return store2;
};
