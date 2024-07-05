export type pokeMessage = {
  receiver : address;
  feedback : string
};

export type storage = {
  pokeTraces: map<address, pokeMessage>;
  feedback: string;
  ticketOwnership: map<address, ticket<string>> //ticket of claims
};

export type return_ = [list<operation>, storage];

class C {
  @entry
  poke = (_p : unit, store: storage): return_ => {
    let { pokeTraces, feedback, ticketOwnership } = store;

    //extract opt ticket from map
    const [t, tom]: [option<ticket<string>>, map<address, ticket<string>>] =
      Map.get_and_update(
        Tezos.get_source(),
        None() as option<ticket<string>>,
        ticketOwnership
      );

    return match(t, {
      None: () => failwith("User does not have tickets => not allowed"),
      Some: (_t) => [
        [] as list<operation>,
        { //let t burn
          feedback,
          pokeTraces: Map.add(
            Tezos.get_source(),
            { receiver: Tezos.get_self_address(), feedback: "" },
            pokeTraces
          ),
          ticketOwnership: tom,
        }
      ]
    });
  };

  @no_mutation
  @entry
  pokeAndGetFeedback = (oracleAddress : address, store : storage) => {
    const { pokeTraces, feedback, ticketOwnership } = store;
    ignore(feedback);
    //extract opt ticket from map
    const [t, tom]: [option<ticket<string>>, map<address, ticket<string>>] =
      Map.get_and_update(
        Tezos.get_source(),
        None() as option<ticket<string>>,
        ticketOwnership
      );

    //Read the feedback view
    let feedbackOpt: option<string> = Tezos.call_view(
      "feedback",
      unit,
      oracleAddress
    );

    return match(t, {
      None: () => failwith("User does not have tickets => not allowed"),
      Some: (_t) =>
        match (feedbackOpt, {
          Some: (feedback) => (() => {
            let feedbackMessage = { receiver: oracleAddress, feedback: feedback };
            return [
              [] as list<operation>,
              {
                feedback,
                pokeTraces: Map.add(
                  Tezos.get_source(),
                  feedbackMessage,
                  pokeTraces
                ),
                ticketOwnership: tom,
              }
            ]})(),
          None: () => failwith("Cannot find view feedback on given oracle address"),
        })
    });
  };

  @entry
  init = (p : [address, nat], store: storage) : return_ => {
    let { pokeTraces, feedback, ticketOwnership } = store;
    let a = p[0]; let ticketCount = p[1];
    if (ticketCount == (0 as nat)) {
      return [[],
              {feedback,
               pokeTraces,
               ticketOwnership,}]
    } else {
      const t : ticket<string> = Option.value_with_error("option is None", Tezos.Next.Ticket.create("can_poke", ticketCount));
      return [[],
             {feedback,
              pokeTraces,
              ticketOwnership: Map.add(a, t, ticketOwnership),}]
    }
  };

  @view
  feedback = (_: unit, store: storage) : string => { return store.feedback };
};
