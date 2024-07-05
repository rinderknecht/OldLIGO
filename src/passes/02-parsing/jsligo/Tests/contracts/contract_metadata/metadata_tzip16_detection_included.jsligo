namespace Module_x {
  export type storage = { content: int, metadata: big_map<string, bytes> }

  export class Module_x {
    @entry
    main = (_p: unit, s: storage): [list<operation>, storage] => [[], s]

    storage: storage = { content: 5, metadata: Big_map.literal([]) }
  }
}
