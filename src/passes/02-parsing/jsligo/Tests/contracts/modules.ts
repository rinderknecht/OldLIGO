namespace B {
  export type titi = int;
};

namespace A {
    export type titi = B.titi;
    export namespace C {
        export const toto: titi = 42;
    };
    export const add = (a: titi, b: titi) : titi => a + b;
};

import D = A;

import E = A.C;

// @no_mutation
export const toto : D.titi = E.toto;

// @inline
const add2 = (a: A.titi, b: D.titi) : A.titi => A.add (a, b);

namespace Foo {
  export type Bar = int;
  export namespace Bar { export type t = int; };
};

// we test capitalized type inside module
const x : Foo.Bar = 42;

// also in a binding
const f = (x: Foo.Bar) => x;
