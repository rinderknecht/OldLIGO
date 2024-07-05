type test =
  | { kind: "Alt1", value: (a: int) => string }
  | { kind: "Alt2" }
  | {
      kind: "Alt3",
      value: {
        field1: int,
        field2: (a: int, b: int) => (
          ["Join", int] | ["Empty"]
        )
      }
    };
