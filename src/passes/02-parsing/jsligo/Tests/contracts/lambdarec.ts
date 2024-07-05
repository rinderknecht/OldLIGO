
const fib = (n : int) : int => {
  if (n <= 1) {
    return 1;
  }
  return fib(n - 1) + fib(n - 2);
};

const cat = <T>(xs: list<T>, ys: list<T>) : list<T> =>
    match(List.pop(xs), {
      None: () => ys,
      Some: ([hd,tl]) => [hd, ...cat(tl, ys)],
    });

const fib2 : (_u : unit) => (n : int) => int = () => {
  const z = 0;
  const o = 1 + z;
  const inner_fib = (n : int) : int => {
    if (n <= 1) {
      return o;
    }
    return inner_fib(n - 1) + inner_fib(n - 2);
  };

  return inner_fib;
};
