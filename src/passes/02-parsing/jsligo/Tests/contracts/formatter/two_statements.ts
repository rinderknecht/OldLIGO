let main = (p: key_hash): address => {
  let c : contract<unit> = Tezos.implicit_account(p);
  return c;
};

