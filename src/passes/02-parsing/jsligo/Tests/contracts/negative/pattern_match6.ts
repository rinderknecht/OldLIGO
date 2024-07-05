
type action = ["A"]  | ["B"]  | ["C"];
type state  = ["S1"] | ["S2"]

let do_something = ([state, action]: [state,action]) : state =>
    match (state, {
      S1: () => match (action, {
        A: () => S1(),
        B: () => S2()
      }),
      S2: () => match (action, {
        A: () => S2(),
        B: () => S1()
      })
    });
