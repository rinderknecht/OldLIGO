let concat_op = (s: bytes): bytes => Bytes.concat(s, 0x7070);
let slice_op = (s: bytes): bytes => Bytes.sub(abs(1), abs(2), s);
let hasherman = (s: bytes): bytes => Crypto.sha256(s);
