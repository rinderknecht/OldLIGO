(* Injection of Zero-Width Spaces *)

(* Vendor dependencies *)

module Region = Simple_utils.Region
module Std    = Simple_utils.Std
module Unit   = LexerLib.Unit

(* Local dependencies *)

module Token = Lx_py_self_tokens.Token

(* Injection *)

let filter (units : Token.t Unit.lex_unit list) =
  let open! Token in
  let rec aux acc = function
    (`Token GRAVE _ as grave) :: (`Token t :: _ as units) ->
        aux (`Token (mk_ZWSP (to_region t)) :: grave :: acc) units
  | unit :: units -> aux (unit :: acc) units
  | [] -> List.rev acc
  in aux [] units

type units = Token.t Unit.t list

type message = string Region.reg

type result = (units, units * message) Stdlib.result

let filter ?print_passes ~add_warning:_ units : result =
  let () =
    match print_passes with
      Some std ->
        Std.(add_line std.out
                      "Running PyLIGO unit self-pass: \
                       Injecting ZWSP virtual tokens.")
    | None -> ()
  in Ok (filter units)
