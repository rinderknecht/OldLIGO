class C {
  @entry
  main = (_p: unit, _s: int): [list<operation>, int] => {
    let y = 0;
    for (y = 0; ; y++) ;
    return [[], y]
  };
};
