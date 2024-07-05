type param = int;

type storage = int;

type ret = [list<operation>, storage];

class C {
  @entry
  main = (_p: param, s: storage): ret => [[], s];
};
