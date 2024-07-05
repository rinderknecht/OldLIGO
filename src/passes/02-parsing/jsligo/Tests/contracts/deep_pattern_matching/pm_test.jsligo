type myt =
  | ["Nil"]
  | ["Cons", [int, int]];

// this essentially test variable substitution (see var rule)
let t2 = (x: myt, y: myt): int =>
  match(x, {
    Nil: () =>
      match(y, {
        Nil: () => 1,
        Cons: (p) => (() => {
          let [_a, b] = p;
          let a1 = "a";
          return (int(String.length(a1))) + b;
        })()
      }),
    Cons: (p) => (() => {
      let [a, b]: [int, int] = p;
      let old_b = b;
      let b_fn = (a: int, b: int): int => {
        return match(y, {
          Nil: () => (() => {
            let f = (b: int): int => b + a;
            return f(b + 1)
          })(),
          Cons: (_) => a + b
        })
      };
      b = b_fn(a, b);
      return a + b + old_b;
    })()
  })
