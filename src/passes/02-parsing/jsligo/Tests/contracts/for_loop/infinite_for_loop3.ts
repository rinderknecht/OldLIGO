class C {
  @entry
  main = (_p: unit, _s: int): [list<operation>, int] => {
    let y = 0;
    for (let b = 0; ; ) {
      let _ = b;
    }
    return [[], y]
  };
};
