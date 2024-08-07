const initAccount = ([accList, k]: [list<address>, key]) : list<address> => {
    let hk : key_hash = Crypto.hash_key(k);
    let c : contract<unit> = Tezos.implicit_account(hk);
    let a : address = Tezos.address(c);
    Test.log(Test.get_balance_of_address(a));
    Test.transfer_to_contract_exn(c, unit, (123 as mutez));
    Test.log(Test.get_balance_of_address(a));
    return [Tezos.address(c) , ...accList]; 
};
  
const keys : list<key> = [("edpkuBknW28nW72KG6RoHtYW7p12T6GKc7nAbwYX5m8Wd9sDVC9yav" as key)];

const test_addresses : list<address> = List.fold(initAccount, keys, []);
