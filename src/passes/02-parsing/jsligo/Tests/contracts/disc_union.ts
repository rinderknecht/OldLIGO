type storage = int;

type parameter =
  { kind: "Increment"; amount: int}
| { kind: "Decrement"; amount: int}

type ret = storage;

const check = (action : parameter, store : storage) : ret => {
 let amount = store;
 switch (action.kind) {
    case "Increment":
      amount += action.amount;
      break
    case "Decrement":
      amount -= action.amount;
      break
 }
 return amount
};
