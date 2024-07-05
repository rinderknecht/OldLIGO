namespace C {
  type storage = int

  type parameter = ["Increment", int] | ["Decrement", int] | ["Reset"]

  export class C {
    @entry
    increment (store: storage, delta: int) : [list<operation>, storage] {
      return [[],store + delta]
    }

    @entry
    decrement (store: storage, delta: int) : [list<operation>, storage] {
      return [[],store - delta]
    }
  }
}

/* Tests for main access point */

const test_initial_storage =
  (
    () => {
      let initial_storage = 42;
      let orig = Test.originate(contract_of(C.C), initial_storage, 0 as tez);
      return assert(Test.get_storage(orig.addr) == initial_storage)
    }
  )();

const test_increment =
  (
    () => {
      let initial_storage = 42;
      let orig = Test.originate(contract_of(C.C), initial_storage, 0 as tez);
      let contr = Test.to_contract(orig.addr);
      Test.transfer_to_contract_exn(contr, Increment(1), 1 as mutez);
      return assert(Test.get_storage(orig.addr) == initial_storage + 1)
    }
  )();
