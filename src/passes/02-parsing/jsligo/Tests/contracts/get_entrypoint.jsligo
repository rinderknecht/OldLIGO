class C {
  @entry
  main = (_u : unit, _b : address) : [list <operation>, address] => {
    let c : contract<int> =
        Option.value_with_error("option is None",
                                Tezos.get_entrypoint_opt ("%foo", Tezos.get_sender()));
    return [[] as list <operation>, Tezos.address(c)];
  }
};
