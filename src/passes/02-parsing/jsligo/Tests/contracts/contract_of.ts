class C {
  @entry
  increment = (action: int, store: int) : [list <operation>, int] =>
    [[], store + action];

  static contract_of_ = 42;
}
