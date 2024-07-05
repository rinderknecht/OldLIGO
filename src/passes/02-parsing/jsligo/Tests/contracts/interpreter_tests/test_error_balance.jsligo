namespace C {
  type storage = int;

  type parameter =
  | ["Increment", int]
  | ["Decrement", int]
  | ["Reset"];

  type return_ = [list <operation>, storage];

  export class C {
    add = ([store, delta] : [storage, int]) : storage => store + delta;
    sub = ([store, delta] : [storage, int]) : storage => store - delta;

    @entry
    main = (action: parameter, store: storage) : return_ =>
    [[],
     (match (action, {
       Increment: (n) => add ([store, n]),
       Decrement: (n) => sub ([store, n]),
       Reset: () => 0, }))]
  }
}

const _test = () : test_exec_error_balance_too_low => {
  let initial_storage = 42 as int;
  let orig = Test.originate(contract_of(C.C), initial_storage, 0 as tez);
  let r = Test.transfer(orig.addr, Main((Increment (1))), 100000000 as tez);
  return match(r, {
    Success: (_n) => failwith("Success"),
    Fail: (e) => match (e, {
      Rejected: (_x) => failwith("Rejected"),
      Balance_too_low: (x) =>
      ((x: test_exec_error_balance_too_low) => { Test.log(x.spend_request); Test.log(x.contract_balance); return x; })(x),
      Other: (_s) => failwith("Other"),
    })
  });
};

const test = _test();
