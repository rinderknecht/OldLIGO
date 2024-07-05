export class Rec {
  recursion = <T>(xs : list<T>) : option<T> => recursion(xs)

  @entry
  main = (parameter: list<string>, storage: int) : [list<operation>, int] => {
    recursion(parameter);
    return [[], storage];
  }
}
