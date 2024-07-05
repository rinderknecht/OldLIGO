type dup<a> = [a, a];

const diag = <T>(x : T) => [x, x];

const _rev = <T>([xs, acc] : [list<T>, list<T>]) : list<T> =>
  match(List.pop(xs), {
    None: () => acc,
    Some: ([z,zs]) => _rev([zs, list([z,...acc])])
  });

const rev = <T>(xs : list<T>) : list<T> => _rev([xs, []]);


const _zip = <T,U>([xs, ys, acc] : [list<T>, list<U>, list<[T, U]>]) : list<[T, U]> =>
  match(List.pop(xs), {
    None: () =>
      match(List.pop(ys), {
        None: () => acc,
        Some: ([_y,_ys]) => (failwith ("oops") as list<[T, U]>)
      }),
    Some: ([z, zs]) =>
      match(List.pop(ys), {
        None: () => (failwith ("oops") as list<[T, U]>),
        Some: ([w,ws]) => _zip([zs, ws, list([[z, w], ...acc])])
      })
  });

const zip = <T,U>(xs : list<T>) => ((ys : list<U>) : list<[T, U]> => rev (_zip ([xs, ys, []])));

const self_zip = <T>(lst : list<T>) : list<[T, T]> => {
  let [xs, ys] = diag(lst);
  return (zip(xs))(ys)
};

const v : list<[string, string]> = self_zip (["a","b"]);
const w : list<[int, nat]> = (zip ([1,2,3]))([(4 as nat),(5 as nat),(6 as nat)]);
