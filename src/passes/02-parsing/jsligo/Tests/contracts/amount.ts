function check_ (_ : unit) : int {
  if (Tezos.get_amount() == (100 as tez)) return 42;
  else return 0
}
