#import "./contract_under_test/module_adder.mligo" "Adder"

const _tester = (a : typed_address<parameter_of<Adder>, int>, _c : michelson_contract<parameter_of<Adder>, int>, _i : int) : unit => {
  let c : contract<parameter_of<Adder>> = Test.to_contract(a);
  /* Test 1 */
  Test.transfer_to_contract_exn(c, Add(0), 0 as tez);
  Test.assert(Test.get_storage(a) == 0);
  /* Test 2 */
  Test.transfer_to_contract_exn(c, Add(1), 0 as tez);
  Test.assert(Test.get_storage(a) == 1);
};

const test = (() : unit => {
    let l = Test.originate_and_mutate_all(contract_of(Adder), 0, 0 as tez, _tester);
    Test.log(l);
})();
