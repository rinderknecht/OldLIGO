type storage = { data: int; metadata: big_map<string, bytes> }

class C {
  @tzip16_compatible
  storage_sample: storage = {
    data: 5,
    metadata: Big_map.literal(
      list([["",(
            bytes
            `https://ipfs.io/ipfs/QmSBc8QuynU7bArUGtjwCRhZUbJyZQArrczKnqM7hZPtfV`
      )
            ]
           ]
          )
    )
  }

  main = (_: string, store: storage): [list<operation>, storage] =>
   [[], store]
}
