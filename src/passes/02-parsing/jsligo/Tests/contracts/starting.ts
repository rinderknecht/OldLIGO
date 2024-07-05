namespace IncDec {
  type storage = int;
  type ret = [list<operation>, storage];

  class IncDec {
    @entry
    increment = (delta : int, store : storage) : ret => [[], store + delta];

    @entry
    decrement = (delta : int, store : storage) : ret => [[], store - delta];

    @entry
    reset = (_ : unit, _ : storage) : ret => [[], 0];
  }
};
