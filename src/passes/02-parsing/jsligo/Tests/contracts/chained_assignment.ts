function bar (_: unit) : int {
  let _x = 1;
  let _y = 1;
  _x = _y = 3;
  let z = _x = _y;
  return _x + _y + z
}
