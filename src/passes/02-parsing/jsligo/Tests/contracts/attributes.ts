// @inline
const x = 1;

// @inline
function foo (a : int) : int {
  // @inline
  let test = 2 + a
  return test
}

// sfgsff
const y = 1;

function bar (b : int) : int {
  // @inline
  let test = (z : int) : int => 2 + b + z
  return test (b);
};

// @
const check = 4
