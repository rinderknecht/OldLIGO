#import "FA0.interface.jsligo" "INT0"
#import "FA0.interface.mligo" "INT1"

// Check that implementation of a class defined outside works

type storage = INT0.storage;

class Impl0 implements INT0.FA0 {
  @entry
  add = (s : int, k : storage) : [list<operation>, storage] =>
  [[], abs (s + k)];
}

// check that implementation of a namespace defined outside, but in CameLIGO with @extensible works

class Impl1 implements INT1.FA0 {
  @entry
  add = (s : int, k : int) : [list<operation>, int] => [[], s + k];

  @entry
  extra = (s : int, k : int) : [list<operation>, int] => [[], s - k];
}

class Impl2 implements INT1.FA0 {
  @entry
  add = (s : int, k : storage) : [list<operation>, storage] =>
    [[], s + k];

  @entry
  extra = (s : int, k : storage) : [list<operation>, storage] =>
    [[], s - k];
}

class Impl3 implements INT1.FA0 {
  @entry
  add = (s : int, k : storage) : [list<operation>, storage] =>
    [[], s + k];
}


// check that also implementation of a local namespace works

interface FA0 {
  // @entry
  add : (p : int, s : storage) => [list<operation>, storage];
}

class Impl4 implements INT0.FA0 {
  @entry
  add = (s : int, k : storage) : [list<operation>, storage] =>
  [[], s + k];
}
