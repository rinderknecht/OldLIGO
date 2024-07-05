type storage = [int, list <int>];

type parameter = list <int>;

type returnx = [list <operation>, storage];

let x : list <int> = [];
let y : list <int> = [3, 4, 5];
let z : list <int> = [2, ...y];

let main = (p : parameter, s : storage) : returnx => {
  let storage = match (List.pop(p), {
    None: () => s,
    Some: ([hd,tl]) => [s[0] + hd, tl]
  });
  return [[], storage];
};

let size_ = (s : list <int>) : nat => List.length (s);

let fold_op = (s : list <int>) : int => {
  let aggregate = (t: [int, int]):int => t[0] + t[1];
  return List.fold (aggregate, s, 10);
};

let map_op = (s : list <int>) : list <int> =>
  List.map ((cur : int) => cur + 1, s);

let iter_op = (s : list <int>) : unit => {
  let do_nothing = (_useless : int):unit => unit;
  List.iter (do_nothing, s);
};

const find_x : option<int> =
  List.find_opt ((_ : int) : bool => true, x);

const find_y4 : option<int> =
  List.find_opt ((y_elem : int) : bool => y_elem == 4, y);

const find_y6 : option<int> =
  List.find_opt ((y_elem : int) : bool => y_elem == 6, y);

const find_z2 : option<int> =
  List.find_opt ((z_elem : int) : bool => z_elem == 2, z);

const filter_map_y : list<nat> = List.filter_map ((x : int) => { if (x == 3 || x == 5) { return Some(abs(x + 2)) } ; return None() }, y);

const update_filter_map_y : list<nat> = List.update ((x : nat) => { if (x == (5 as nat)) { return Some(7 as nat) }; return None() }, filter_map_y);

const update_with_filter_map_y : list<nat> = List.update_with ((x : nat) => x == (5 as nat), (42 as nat), [5 as nat, ...filter_map_y]);
