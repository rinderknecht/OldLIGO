function check (p : key_hash) : address {
  let c : contract<unit> = Tezos.implicit_account(p);
  return Tezos.address(c);
};
