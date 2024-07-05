export namespace IncDec {
  type storage = int;
  type result = [list<operation>, storage];

  class IncDec {
    @entry
    increment = (delta : int, store : storage) : result =>
      [[], store + delta];

    @entry
    default = (_u : unit, store : storage) : result =>
      increment(1, store)

    @entry
    decrement = (delta : int, store : storage) : result =>
      [[], store - delta];

    @entry
    reset = (_p : unit, _s : storage) : result =>
      [[], 0];
  };
};
