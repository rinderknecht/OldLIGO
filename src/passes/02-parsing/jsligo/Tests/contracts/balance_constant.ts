/**

This test makes sure that the balance is accessible in JsLIGO.
It's there to detect a regression of: https://gitlab.com/ligolang/ligo/issues/61

Which results in this error when you attempt to compile this contract:

generated. unrecognized constant: {"constant":"BALANCE","location":"generated"}


*/

type storage = tez;

function main3 (_unit : unit, _storage : storage) : [list<operation>, tez] {
  return [[], Tezos.get_balance()] }

function main (x0 : unit, x1 : storage): [list<operation>, tez] {
  return main3 (x0, x1) }
