
type parameter =
  { kind: "Increment"; amount: int }
| { kind: "Decrement"; amount: int }
| { kind: "Reset" };

const check = (action: parameter) => {
  switch (action.kind) {
    case "Increment":
      let a = action.amount;
      let b = 3;
      return a + b * 3;
    case "Decrement":
      if (action.amount > 4) {
          return 2
      } else {
        return 5
      }
    case "Reset": {
      let amount = 0;
      let amount2 = amount + 3;
      let amount3 = amount2 - 2;
      let amount4 = amount3 * 3;
      return amount4
    }
  }
};

const _INCREMENT:int = 0;
const _DECREMENT:int = 1;
const _RESET:int = 2;

const check2 = (action: int) => {
  switch (action) {
    case _INCREMENT:
      let a = 2;
      let b = 3;
      return a + b * 3;
    case _DECREMENT:
      if (action > 4) {
          return 2
      } else {
        return 5
      }
    case _RESET: {
      let amount = 0;
      let amount2 = amount + 3;
      let amount3 = amount2 - 2;
      let amount4 = amount3 * 3;
      return amount4
    }
    default:
        return -1;
  }
}
