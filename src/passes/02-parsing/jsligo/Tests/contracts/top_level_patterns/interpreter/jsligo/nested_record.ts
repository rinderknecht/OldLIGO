//TODO: write in jsligo

// let () = Test.set_print_values ()

// type t = { c : nat ; d : int ; e : string }
// type r = { a : t   ; b : t   ; c : t      }

// let f () =
//     let () = Test.log "Once" in
//     { a = { c = abs(1) ; d = 1 ; e = "H" }
//     ; b = { c = abs(2) ; d = 2 ; e = "E" }
//     ; c = { c = abs(3) ; d = 3 ; e = "L" }
//     }

// let { a = { c = c1 ; d = d1 ; e = e1 }
//     ; b = { c = c2 ; d = d2 ; e = e2 }
//     ; c = { c = c3 ; d = d3 ; e = e3 }
//     } = f ()

// let { a = { c = c4 ; d = d4 ; e = e4 }
//     ; b = { c = c5 ; d = d5 ; e = e5 }
//     ; c = { c = c6 ; d = d6 ; e = e6 }
//     }
//   = { a = { c = abs(1) ; d = 1 ; e = "H" }
//     ; b = { c = abs(2) ; d = 2 ; e = "E" }
//     ; c = { c = abs(3) ; d = 3 ; e = "L" }
//     }

// let test =
//     begin
//         assert ((c1 + c2 + c3) = (c4 + c5 + c6));
//         assert ((d1 + d2 + d3) = (d4 + d5 + d6));
//         assert ((e1 ^ e2 ^ e3) = (e4 ^ e5 ^ e6))
//     end
