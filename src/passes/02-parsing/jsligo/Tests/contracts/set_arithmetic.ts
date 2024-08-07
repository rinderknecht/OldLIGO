/* Test set operations in JsLIGO */

let literal_op = (_: unit) : set <string> =>
  Set.literal (["foo", "bar", "foobar"]);

let size_op = (s: set <string>): nat =>
  Set.cardinal (s);

let add_op = (s: set <string>) : set <string> =>
  Set.add ("foobar", s);

let remove_op = (s: set <string>) : set <string> =>
  Set.remove ("foobar", s);

let remove_deep = (s: [set <string>, nat]): [set <string>, nat] =>
  [Set.remove ("foobar", s[0]), s[1]];

let patch_op = (s: set <string>) : set <string> =>
  Set.add ("foobar", s);

let patch_op_deep = (s: [set <string>, nat]) : [set <string>, nat] =>
  [Set.add ("foobar", s[0]), s[1]];

let mem_op = (s: set <string>) : bool =>
  Set.mem ("foobar", s);

let iter_op = (s : set <int>) : int => {
  Set.iter (((_ : int) => unit), s);
  return 0;
}

let aggregate = ( [i,j] : [list <int>, int]) : list <int> => list ([j, ...i]);

let fold_op  = (s : set <int>) : list<int> => Set.fold (aggregate, s, [])

let aggregate2 = ( [i,j] : [int , list<int>]) : list<int> => list ([i, ...j]);
let fold_right = (s : set <int>) : list<int> => Set.fold_desc (aggregate2, s, []);

let filter_map_lit = Set.filter_map((s : string) => { if (String.length(s) > (3 as nat)) { return Some(String.length(s)); } ; return None(); } , literal_op());
