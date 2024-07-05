namespace C {
  export type storage =
    {
     storage : int;
     dynamic_entrypoints
    }

  export class C {
    @dyn_entry
    static one = (_u: unit, _i: int): [list<operation>, int] => [[], 1];

    @entry
    call_one = (_u:unit, s : storage) : [list<operation>, storage] =>
    match (Dynamic_entrypoints.get(one, s.dynamic_entrypoints), {
      Some: (f) => (() => {
        const [op, storage] = f([], s.storage);
        return [op, ({...s, storage})]
      })(),
      None: () => failwith(-1),
    })

    @entry
    set_one = (one_v2 : entrypoint<unit, int>, s : storage)
    : [list<operation>, storage] => {
      const dynamic_entrypoints =
      Dynamic_entrypoints.set(one, (Some(one_v2)), s.dynamic_entrypoints);
      return [[], {...s, dynamic_entrypoints}]
    }
  }
}

const test_dyn = (() => {
  const init_storage = Test.Next.Dynamic_entrypoints.storage(contract_of(C.C), 42);
  const orig = Test.originate (contract_of(C.C), init_storage, 0 as mutez);
  /* Call initial one */
  Test.Next.Typed_address.transfer_exn (orig.addr, Call_one(), 1 as mutez);
  Assert.assert ((Test.Next.Typed_address.get_storage(orig.addr)).storage == 1);
  /* Change initial one and call it */
  const f = (_ : unit, i : int) : [list<operation>, int] => [[], i + 1];
  Test.Next.Typed_address.transfer_exn (orig.addr, (Set_one(f)), 1 as mutez);
  Test.Next.Typed_address.transfer_exn (orig.addr, (Call_one()), 1 as mutez);
  Assert.assert ((Test.Next.Typed_address.get_storage(orig.addr)).storage == 2);
  return []
})()
