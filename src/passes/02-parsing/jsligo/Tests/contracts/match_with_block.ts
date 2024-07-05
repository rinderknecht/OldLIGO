function match_with_block () {
  // the first case is a function (holding an expression as body)
  // the second case is a "block function"
  const x = 1 ;
  return
    match(Some(1), {
      None: () => failwith(1),
      Some: (org) => (() => {
        let y = x + 1 ;
        return y
      })()
    });
};
