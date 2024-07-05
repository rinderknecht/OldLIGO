namespace Foo {
  type storage = int;
  type ret = [list<operation>, storage];

  export class Foo {
    @entry
    increment = (delta: int, store: storage): ret =>[[], store + delta]

    @entry
    decrement = (delta: int, store: storage): ret => [[], store - delta]

    @entry
    reset = (_u: unit, _s: storage): ret => [[], 0]
  }
};


let test = Test.log (Test.compile_value(contract_of(Foo.Foo)))
