/* IF YOU CHANGE THIS, CHANGE THE EXAMPLE ON THE FRONT PAGE OF THE WEBSITE */

type storage = int

/* variant defining pseudo multi-entrypoint actions */
type parameter =
| ["Increment", int]
| ["Decrement", int]

const add = (a : int, b : int): int => a + b
const sub = (a : int, b : int): int => a - b;

/* real entrypoint that re-routes the flow based on the parameter provided */

function main (p: parameter, storage: storage): [list<operation>, int] {
  let storage2 = match(p, {
    Increment: (n) => add (storage, n),
    Decrement: (n) => sub (storage, n)
  });
  return [([] as list <operation>), storage2];
}

/* IF YOU CHANGE THIS, CHANGE THE EXAMPLE ON THE FRONT PAGE OF THE WEBSITE */
