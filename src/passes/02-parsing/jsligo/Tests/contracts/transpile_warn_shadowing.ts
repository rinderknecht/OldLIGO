// This contract stresses disabling of shadowing warning for transpiled contracts
//
// Re-declaring block-scoped variable is forbidden by default in JsLIGO.
// However, shadowing is allowed in other syntaxes,
// and these re-declaration can appear as a result of
// transpilation from another syntax with such shadowed variable.
//
// In that case, the warning can be disable by adding the [--transpiled] flag.
// This contract is used in stressing correct disabling of the warning.

const x = 42;
const x = 33;

class C {
  @entry
  main = (_action: int, store: int): [list<operation>, int] => [[], store]
};
