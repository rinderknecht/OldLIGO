type storage = int;

type parameter =
| ["Increment", int]
| ["Decrement", int]
| ["Reset"];

type return_ = [list <operation>, storage];

/* Two entrypoints */
const add = ([store, delta] : [storage, int]) : storage => store + delta;
const sub = ([store, delta] : [storage, int]) : storage => store - delta;

/* Main access point that dispatches to the entrypoints according to
   the smart contract parameter. */
const main = ([action, store] : [parameter, storage]) : return_ => {
 return [
   ([] as list <operation>),    // No operations
   (match_ (action, {
    Increment: (n: int) => add ([store, n]),
    Decrement: (n: int) => sub ([store, n]),
    Reset:     ()  => 0}))
  ]
};
