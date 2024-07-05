// This tests if the else part of the if is a clauseBlock without any inner block
// see function clause_block in jsligo unification
function f () : unit {
   if (true) return unit;
   else {
      const failure = 1;
      if (true) return unit;
      else failwith(failure);
   }
}
