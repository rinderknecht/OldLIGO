type t = ["One", int] | ["Two", nat] | ["Three"]

let s = (x : t) : unit =>
  match(x, {
    One: (a) => unit,
    One: (b) => unit,
    Two: (c) => unit,
    Three: () => unit
  })
