type user = {
  id       : nat;
  is_admin : bool;
  name     : string
};

const alice : user = {
  id       : 1 as nat,
  is_admin : true,
  name     : "Alice"
};

let alice_admin : bool = alice.i
