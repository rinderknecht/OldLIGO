namespace C {
  export type storage = unit
  type result = [list<operation>, storage];

  export class C {
    @entry foo = (_u : unit, s : storage) : result => [[], s];
    @view bar = (_u : unit, s : storage) => s;
  }
}

const test = (() => {
  let orig = Test.originate(contract_of(C.C), [], 0 as tez);
  Test.log(orig.code);
  let c = Test.to_contract(orig.addr);

  Test.log(Tezos.call_view("bar", unit, Tezos.address(c)) as option<C.storage>);
})();
