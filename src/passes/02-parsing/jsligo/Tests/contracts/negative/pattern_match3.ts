let test_foo = (x : test_exec_result) : string => {
  match(x, {
    Success: (_) => "",
    Failure: (_) => ""
  });
}
