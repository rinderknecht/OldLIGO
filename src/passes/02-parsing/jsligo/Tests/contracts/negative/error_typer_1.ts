type action = unit ;

type storage = nat ;

let addone = (oldStorage: nat) : nat => {
   return oldStorage + (1 as nat);
}

let main = (param : action, oldStorage : storage) : [list<operation>, storage] => {
    let newStorage : storage = addone (oldStorage, 1 as nat);
    return [[], newStorage];
}
