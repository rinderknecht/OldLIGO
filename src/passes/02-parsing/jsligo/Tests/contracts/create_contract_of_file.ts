class C {
  @entry
  main = (u : unit, _ : unit) : [list<operation>, unit] => {
    let [op, _addr] = (create_contract_of_file `./interpreter_tests/contract_under_test/compiled.tz`)(None(), 1 as tez, u);
    return [[op], []]
  }
}
