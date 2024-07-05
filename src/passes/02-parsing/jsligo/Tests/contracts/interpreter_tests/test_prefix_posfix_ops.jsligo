const test_prefix_ops = (() => {
  let x = 0;
  Assert.assert(x++ == 0);
  Assert.assert(x++ == 1);
  Assert.assert(x++ == 2);
  Assert.assert(x++ == 3);
  Assert.assert(x++ == 4);
  Assert.assert(x-- == 5);
  Assert.assert(x-- == 4);
  Assert.assert(x-- == 3);
  Assert.assert(x-- == 2);
  Assert.assert(x-- == 1);
  Assert.assert(x   == 0);
  Assert.assert((x++ + x++ + x-- + x--) == 4);
  Assert.assert(((x++ == 0) && (x++ == 1) && (x-- == 2) && (x-- == 1)));
})()

const test_postfix_ops = (() => {
  let x = 0;
  Assert.assert(++x == 1);
  Assert.assert(++x == 2);
  Assert.assert(++x == 3);
  Assert.assert(++x == 4);
  Assert.assert(++x == 5);
  Assert.assert(--x == 4);
  Assert.assert(--x == 3);
  Assert.assert(--x == 2);
  Assert.assert(--x == 1);
  Assert.assert(--x == 0);
  Assert.assert((++x + ++x + --x + --x) == 4);
  Assert.assert(((++x == 1) && (++x == 2) && (--x == 1) && (--x == 0)));
})()


const nth_fibonacci = n => {
  let f = 0, s = 1;
  if (n == 0) return failwith("invalid nth, n should be > 0");
  else if (n == 1) return f;
  else if (n == 2) return s;
  else {
    let t = 0;
    let m = n - 2;
    while (m > 0) {
      t = f;
      f = s;
      s = t + s;
      m--;
    }
    return s
  }
}

const test1  = Assert.assert(0  == nth_fibonacci(1))
const test2  = Assert.assert(1  == nth_fibonacci(2))
const test3  = Assert.assert(1  == nth_fibonacci(3))
const test4  = Assert.assert(2  == nth_fibonacci(4))
const test5  = Assert.assert(3  == nth_fibonacci(5))
const test6  = Assert.assert(5  == nth_fibonacci(6))
const test7  = Assert.assert(8  == nth_fibonacci(7))
const test8  = Assert.assert(13 == nth_fibonacci(8))
const test9  = Assert.assert(21 == nth_fibonacci(9))
const test10 = Assert.assert(34 == nth_fibonacci(10))
const test11 = Assert.assert(55 == nth_fibonacci(11))
const test12 = Assert.assert(89 == nth_fibonacci(12))

const nth_fibonacci2 = n => {
  let f = 0, s = 1;
  if (n == 0) return failwith("invalid n, n should be > 0");
  else if (n == 1) return f;
  else if (n == 2) return s;
  else {
    let t = 0;
    let m = 2;
    while (m < n) {
      t = f;
      f = s;
      s = t + s;
      ++m;
    }
    return s
  }
}

const test1_  = Assert.assert(0  == nth_fibonacci2(1))
const test2_  = Assert.assert(1  == nth_fibonacci2(2))
const test3_  = Assert.assert(1  == nth_fibonacci2(3))
const test4_  = Assert.assert(2  == nth_fibonacci2(4))
const test5_  = Assert.assert(3  == nth_fibonacci2(5))
const test6_  = Assert.assert(5  == nth_fibonacci2(6))
const test7_  = Assert.assert(8  == nth_fibonacci2(7))
const test8_  = Assert.assert(13 == nth_fibonacci2(8))
const test9_  = Assert.assert(21 == nth_fibonacci2(9))
const test10_ = Assert.assert(34 == nth_fibonacci2(10))
const test11_ = Assert.assert(55 == nth_fibonacci2(11))
const test12_ = Assert.assert(89 == nth_fibonacci2(12))
