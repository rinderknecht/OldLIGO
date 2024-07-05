namespace C {
  type storage = int;

  export class C {
    @entry
    increment = (action: int, store: storage) : [list <operation>, storage] =>
      [[], store + action];

    @entry
    decrement = (action: int, store: storage) : [list <operation>, storage] =>
    [[], store - action];
  }
};

const test_increment = (() => {
  let initial_storage = 42;
  let orig = Test.originate(contract_of(C.C), initial_storage, 0 as tez);
  let contr : contract<parameter_of<C.C>> = Test.to_contract(orig.addr);
  let p : parameter_of<C.C> = Increment(1);
  Test.transfer_to_contract_exn(contr, p, 1 as mutez);
  return assert(Test.get_storage(orig.addr) == initial_storage + 1);
}) ();
