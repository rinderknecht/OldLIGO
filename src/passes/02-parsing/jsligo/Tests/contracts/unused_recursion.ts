type t = {
  foo: int;
  bar: int
};

function coucou (storage: t) : t {
  let number = 2
  let id = (x: int) : int => x;
  /* parameter shadows fun_name: simple */

  function toto (toto: int) : int {
    let number = toto
    return number + 1
  }
  /* parameter shadows fun_name: complex */

  function foo (foo: ((p: int) => int)) : int {
    let foox = foo(0)
    return foox
  }
  /* fun_name shadowed in body */

  function bar (x: int): t {
    let bar = x
    return { ...storage, bar: bar }
  }

  let n = toto(number) + foo(id)
  return bar(n)
};

class C {
  @entry
  main (_: unit, storage: t): [list<operation>, t] {
    return [[], coucou(storage)]
  }
};
