const xs = list([1, 2, 3]);

const ys = list([4, 5]);

const zs = list([...xs, ...ys]);

class C {
  @entry
  main = (p: list<int>, s: list<int>): [list<operation>, list<int>] => {
    let rs = list([...p, ...s]);
    return [[], rs]
  }
};
