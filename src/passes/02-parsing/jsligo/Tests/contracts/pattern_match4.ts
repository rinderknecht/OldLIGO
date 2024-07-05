const test_foo = (x : test_exec_result) : string => {
  return match(x, {
    Success: (_) => "",
    Fail: (_) => ""
  });
}
