type organization = {
  name : string;
  admins : int;
};

type storage = int;

class C {
  @entry
  unique = (_p : organization, _s : storage) => {
    return failwith("You need to be part of Tezos organization to activate an organization");
  };
};
