type storage = int;
type ret = [list<operation>, storage];

class IncDec {
  @entry
  increment (_: unit, store : storage) : ret {
    let s = store
    return [[], ++s];
  }

  @entry
  decrement (_: unit, store : storage) : ret {
    let s = store
    return [[], --s];
  }

  @entry
  reset = (_p : unit, _s : storage) : ret => [[], 0];
};

const test_increment = (() => {
  let initial_storage = 42;
  let orig = Test.originate(contract_of(IncDec), initial_storage, 0 as tez);
  Test.Next.Typed_address.transfer_exn(orig.addr, Increment(), 1 as mutez);
  return Assert.assert(Test.Next.Typed_address.get_storage(orig.addr) == initial_storage + 1);
})();
