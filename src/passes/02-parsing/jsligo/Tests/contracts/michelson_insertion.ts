// Test michelson insertion in JsLIGO

let michelson_add = (n : [nat, nat]) : nat =>
  (Michelson `{ UNPAIR; ADD }` as ((n: [nat, nat]) => nat))(n);