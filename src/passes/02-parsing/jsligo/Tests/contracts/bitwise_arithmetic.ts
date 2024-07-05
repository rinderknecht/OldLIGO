/* Test JsLIGO bitwise operators */

const or_op  = (n : nat) : nat => Bitwise.or (n, abs(4))
const and_op = (n : nat) : nat => Bitwise.and (n, abs(7))
const xor_op = (n : nat) : nat => Bitwise.xor (n, abs(7))
const lsl_op = (n : nat) : nat => Bitwise.shift_left (n, abs(7))
const lsr_op = (n : nat) : nat => Bitwise.shift_right (n, abs(7))
