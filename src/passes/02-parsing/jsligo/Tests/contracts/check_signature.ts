function check_signature (param : [key, signature, bytes]) : bool {
  let [pk, signed, msg] = param
  return Crypto.check (pk, signed, msg)
}
