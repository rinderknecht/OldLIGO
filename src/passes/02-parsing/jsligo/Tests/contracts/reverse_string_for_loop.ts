const getChar = (s: string, idx: nat): string => String.sub(idx, 1, s);

class C {
  @entry
  main = (_p: unit, s: string): [list<operation>, string] => {
    let reverse = "";
    let length = String.length(s);
    for (let i = length - 1; i >= 0; i--) {
      reverse += getChar(s, abs(i))
    };
    return [[], reverse]
  };
};

const test =
  (
    () => {
      let initial_storage = "esrever";
      let orig = Test.originate(contract_of(C), initial_storage, 0 as tez);
      Test.transfer_exn(orig.addr, Main(unit), 1 as mutez);
      Test.log(Test.get_storage(orig.addr));
      return assert(Test.get_storage(orig.addr) == "reverse")
    }
  )();
