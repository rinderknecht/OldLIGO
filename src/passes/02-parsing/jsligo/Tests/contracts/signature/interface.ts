namespace Interfaces {
  export type storage = int;
  export type ret = [list<operation>, storage];
  export interface IncDec {
    // @entry
    increment : (k: int, s: storage) => ret;
    // @entry
    decrement : (k: int, s: storage) => ret;
    // @entry
    reset : (_u: unit, s: storage) => ret;
  };
};

namespace IncDec {
  export type storage = Interfaces.storage;
  export type ret = Interfaces.ret;

  export class IncDec implements Interfaces.IncDec {
    @entry
    increment = (delta : int, store : storage) : ret => [[], store + delta];

    @entry
    decrement = (delta : int, store : storage) : ret => [[], store - delta];

    @entry
    reset = (_p : unit, _s : storage) : ret => [[], 0];
  }
};

export class X implements { x : int } {
  static x = 42;
  y = 5;
};
