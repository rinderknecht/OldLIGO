contract: ZWSP
##
## Ends in an error in state: 0.
##
## contract' -> . contract [ # ]
##
## The known suffix of the stack is as follows:
##
##

Ill-formed contract.
At this point, a top-level declaration is expected.

contract: Type ZWSP
##
## Ends in an error in state: 225.
##
## type_decl -> Type . type_name EQ type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## type_decl -> Type . type_name type_vars EQ type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Type
##

Ill-formed type declaration.
At this point, a new type name is expected.

contract: Type Ident ZWSP
##
## Ends in an error in state: 229.
##
## type_decl -> Type type_name . EQ type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## type_decl -> Type type_name . type_vars EQ type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Type type_name
##

Ill-formed type declaration.
At this point, one of the following is expected:
  * the assignment symbol '=' followed by a type;
  * type parameters (variables) between chevrons ('<', '>') if the
    type is generic.

interactive_expr: LT ZWSP
##
## Ends in an error in state: 37.
##
## chevrons(sep_or_term(type_var,COMMA)) -> LT . sep_or_term(type_var,COMMA) gt [ WILD VBAR UIdent String ParameterOf LPAR LBRACKET LBRACE Int Ident ES6FUN EQ ]
##
## The known suffix of the stack is as follows:
## LT
##

Ill-formed generic declaration.
At this point, a type parameter is expected as a variable.

interactive_expr: LT Ident ZWSP
##
## Ends in an error in state: 41.
##
## nsepseq(type_var,COMMA) -> type_var . [ GT ]
## nsepseq(type_var,COMMA) -> type_var . COMMA nsepseq(type_var,COMMA) [ GT ]
## nseq(__anonymous_0(type_var,COMMA)) -> type_var . COMMA [ GT ]
## nseq(__anonymous_0(type_var,COMMA)) -> type_var . COMMA nseq(__anonymous_0(type_var,COMMA)) [ GT ]
##
## The known suffix of the stack is as follows:
## type_var
##

Ill-formed generic declaration.
At this point, one of the following is expected:
  * a comma ',' followed by another type parameter (variable);
  * a closing chevron '>' if there are no more parameters.

interactive_expr: LT Ident COMMA ZWSP
##
## Ends in an error in state: 42.
##
## nsepseq(type_var,COMMA) -> type_var COMMA . nsepseq(type_var,COMMA) [ GT ]
## nseq(__anonymous_0(type_var,COMMA)) -> type_var COMMA . [ GT ]
## nseq(__anonymous_0(type_var,COMMA)) -> type_var COMMA . nseq(__anonymous_0(type_var,COMMA)) [ GT ]
##
## The known suffix of the stack is as follows:
## type_var COMMA
##

Ill-formed generic declaration.
At this point, one of the following is expected:
  * another type parameter (variable);
  * a closing chevron '>' if there are no more parameters.

contract: Type Ident EQ ZWSP
##
## Ends in an error in state: 230.
##
## type_decl -> Type type_name EQ . type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Type type_name EQ
##
contract: Type Ident LT GT EQ ZWSP
##
## Ends in an error in state: 233.
##
## type_decl -> Type type_name type_vars EQ . type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Type type_name type_vars EQ
##

Ill-formed generic type declaration.
At this point, a type is expected.

interactive_expr: ContractOf LPAR UIdent DOT ZWSP
##
## Ends in an error in state: 111.
##
## namespace_path(namespace_name) -> namespace_name DOT . namespace_path(namespace_name) [ While Type Switch SEMI_ELSE SEMI Return RPAR RBRACE PARAMS Namespace Let LBRACE Interface Import If GT For Export EOF Directive Default Continue Const Case COMMA Break ]
## namespace_path(namespace_name) -> namespace_name DOT . namespace_name [ While Type Switch SEMI_ELSE SEMI Return RPAR RBRACE PARAMS Namespace Let LBRACE Interface Import If GT For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## namespace_name DOT
##

Ill-formed selection in a namespace.
At this point, a namespace name is expected.

interactive_expr: ES6FUN LPAR Ident COLON ZWSP
##
## Ends in an error in state: 99.
##
## type_annotation(type_expr) -> COLON . type_expr [ SEMI RPAR RBRACE PARAMS COMMA ]
##
## The known suffix of the stack is as follows:
## COLON
##

Ill-formed type annotation.
At this point, a type is expected.

contract: Type Ident LT GT XOR
##
## Ends in an error in state: 232.
##
## type_decl -> Type type_name type_vars . EQ type_expr [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Type type_name type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##

Ill-formed generic type declaration.
At this point, if the type parameters are complete, the assignment
symbol '=' is expected, followed by a type.

contract: Namespace ZWSP
##
## Ends in an error in state: 494.
##
## namespace_decl -> Namespace . namespace_binder braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Namespace
##

Ill-formed namespace declaration.
At this point, a namespace name is expected.

contract: Namespace UIdent ZWSP
##
## Ends in an error in state: 497.
##
## namespace_decl -> Namespace namespace_binder . braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Namespace namespace_binder
##

Ill-formed namespace declaration.
At this point, one of the following is expected:
  * the keyword 'implements' followed by an interface;
  * a block of statements starting with an opening brace '{'.

contract: Namespace UIdent LBRACE ZWSP
##
## Ends in an error in state: 224.
##
## braces(statements) -> LBRACE . statements RBRACE [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Else EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed block of statements.
At this point, a statement is expected.

contract: Namespace UIdent LBRACE While ZWSP
##
## Ends in an error in state: 1.
##
## while_stmt(catenable_stmt) -> While . par(while_cond) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While . par(while_cond) statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_ending_with_expr) -> While . par(while_cond) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While
##
contract: Return If LPAR Bytes RPAR While ZWSP
##
## Ends in an error in state: 976.
##
## while_stmt(__anonymous_6) -> While . par(while_cond) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(before_else) -> While . par(while_cond) before_else [ Else ]
## while_stmt(closed_non_if_stmt) -> While . par(while_cond) closed_non_if_stmt [ SEMI_ELSE ]
## while_stmt(export(type_decl)) -> While . par(while_cond) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While . par(while_cond) statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While . par(while_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## While
##
contract: Return While LPAR Bytes RPAR While ZWSP
##
## Ends in an error in state: 972.
##
## while_stmt(__anonymous_6) -> While . par(while_cond) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(export(type_decl)) -> While . par(while_cond) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While . par(while_cond) statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While . par(while_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## While
##
contract: Namespace UIdent LBRACE Return While ZWSP
##
## Ends in an error in state: 970.
##
## while_stmt(statement) -> While . par(while_cond) statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While . par(while_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> While . par(while_cond) stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While
##

Ill-formed while-loop.
At this point, the invariant between parentheses is expected.

contract: Namespace UIdent LBRACE While LPAR ZWSP
##
## Ends in an error in state: 2.
##
## par(while_cond) -> LPAR . while_cond RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(while_cond) -> LPAR . while_cond PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed while-loop.
At this point, the invariant is expected as a boolean expression.

interactive_expr: PLUS2 ZWSP
##
## Ends in an error in state: 25.
##
## pre_incr_expr -> PLUS2 . WILD [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
## pre_incr_expr -> PLUS2 . Ident [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## PLUS2
##

Ill-formed increment.
At this point, the incremented variable is expected.

interactive_expr: LPAR ZWSP
##
## Ends in an error in state: 36.
##
## par(expr) -> LPAR . expr RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(expr) -> LPAR . expr PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed parenthesised expression.
At this point, an expression is expected.

interactive_expr: Match ZWSP
##
## Ends in an error in state: 30.
##
## match_expr -> Match . par(__anonymous_8) [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## Match
##

Ill-formed pattern matching.
At this point, the matched expression is expected.

contract: Const LBRACKET ZWSP
##
## Ends in an error in state: 505.
##
## brackets(sep_or_term(element(pattern),COMMA)) -> LBRACKET . sep_or_term(element(pattern),COMMA) RBRACKET [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LBRACKET
##
interactive_expr: ES6FUN LPAR LBRACKET ZWSP
##
## Ends in an error in state: 65.
##
## brackets(sep_or_term(element(param_pattern),COMMA)) -> LBRACKET . sep_or_term(element(param_pattern),COMMA) RBRACKET [ RPAR RBRACKET RBRACE PARAMS COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LBRACKET
##

Ill-formed array pattern.
At this point, a pattern matching the first element is expected.

contract: Const LBRACE ZWSP
##
## Ends in an error in state: 506.
##
## braces(sep_or_term(property_pattern(pattern),COMMA)) -> LBRACE . sep_or_term(property_pattern(pattern),COMMA) RBRACE [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LBRACE
##
interactive_expr: ES6FUN LPAR LBRACE ZWSP
##
## Ends in an error in state: 66.
##
## braces(sep_or_term(property_pattern(param_pattern),COMMA)) -> LBRACE . sep_or_term(property_pattern(param_pattern),COMMA) RBRACE [ RPAR RBRACKET RBRACE PARAMS COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed record pattern.
At this point, a pattern matching the first field is expected.


contract: Const LBRACE Ident ZWSP
##
## Ends in an error in state: 511.
##
## property_pattern(pattern) -> property_id . [ RBRACE COMMA ]
## property_pattern(pattern) -> property_id . COLON pattern [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id
##
interactive_expr: ES6FUN LPAR LBRACE Ident ZWSP
##
## Ends in an error in state: 72.
##
## property_pattern(param_pattern) -> property_id . [ RBRACE COMMA ]
## property_pattern(param_pattern) -> property_id . COLON param_pattern [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id
##

Ill-formed record pattern.
At this point, one of the following is expected:
  * a colon ':' followed by a pattern matching the field;
  * a comma ',';
  * a closing brace '}' if no more fields.

contract: Const LBRACE Ident COLON ZWSP
##
## Ends in an error in state: 512.
##
## property_pattern(pattern) -> property_id COLON . pattern [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id COLON
##
interactive_expr: ES6FUN LPAR LBRACE Ident COLON ZWSP
##
## Ends in an error in state: 73.
##
## property_pattern(param_pattern) -> property_id COLON . param_pattern [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id COLON
##

Ill-formed record pattern.
At this point, a pattern matching the field is expected.


contract: Const LBRACE Ident COLON Bytes ZWSP
##
## Ends in an error in state: 509.
##
## nsepseq(property_pattern(pattern),COMMA) -> property_pattern(pattern) . [ RBRACE ]
## nsepseq(property_pattern(pattern),COMMA) -> property_pattern(pattern) . COMMA nsepseq(property_pattern(pattern),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property_pattern(pattern),COMMA)) -> property_pattern(pattern) . COMMA [ RBRACE ]
## nseq(__anonymous_0(property_pattern(pattern),COMMA)) -> property_pattern(pattern) . COMMA nseq(__anonymous_0(property_pattern(pattern),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_pattern(pattern)
##
interactive_expr: ES6FUN LPAR LBRACE Ident COLON Ident ZWSP
##
## Ends in an error in state: 69.
##
## nsepseq(property_pattern(param_pattern),COMMA) -> property_pattern(param_pattern) . [ RBRACE ]
## nsepseq(property_pattern(param_pattern),COMMA) -> property_pattern(param_pattern) . COMMA nsepseq(property_pattern(param_pattern),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) -> property_pattern(param_pattern) . COMMA [ RBRACE ]
## nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) -> property_pattern(param_pattern) . COMMA nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_pattern(param_pattern)
##

Ill-formed record pattern.
At this point, one of the following is expected:
  * a comma ',';
  * a closing brace '}' if no more fields.

contract: Const LBRACE Ident COMMA ZWSP
##
## Ends in an error in state: 510.
##
## nsepseq(property_pattern(pattern),COMMA) -> property_pattern(pattern) COMMA . nsepseq(property_pattern(pattern),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property_pattern(pattern),COMMA)) -> property_pattern(pattern) COMMA . [ RBRACE ]
## nseq(__anonymous_0(property_pattern(pattern),COMMA)) -> property_pattern(pattern) COMMA . nseq(__anonymous_0(property_pattern(pattern),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_pattern(pattern) COMMA
##
interactive_expr: ES6FUN LPAR LBRACE Ident COMMA ZWSP
##
## Ends in an error in state: 70.
##
## nsepseq(property_pattern(param_pattern),COMMA) -> property_pattern(param_pattern) COMMA . nsepseq(property_pattern(param_pattern),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) -> property_pattern(param_pattern) COMMA . [ RBRACE ]
## nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) -> property_pattern(param_pattern) COMMA . nseq(__anonymous_0(property_pattern(param_pattern),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_pattern(param_pattern) COMMA
##

Ill-formed record pattern.
At this point, one of the following is expected:
  * a field pattern;
  * a closing brace '}' if no more fields.

contract: Const LBRACKET ELLIPSIS ZWSP
##
## Ends in an error in state: 543.
##
## element(pattern) -> ELLIPSIS . pattern [ RBRACKET COMMA ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS
##
interactive_expr: ES6FUN LPAR LBRACKET ELLIPSIS ZWSP
##
## Ends in an error in state: 85.
##
## element(param_pattern) -> ELLIPSIS . param_pattern [ RBRACKET COMMA ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS
##

Ill-formed array pattern.
At this point, a pattern matching the rest of the array is expected.

contract: Const LBRACKET Bytes ZWSP
##
## Ends in an error in state: 551.
##
## nsepseq(element(pattern),COMMA) -> element(pattern) . [ RBRACKET ]
## nsepseq(element(pattern),COMMA) -> element(pattern) . COMMA nsepseq(element(pattern),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(pattern),COMMA)) -> element(pattern) . COMMA [ RBRACKET ]
## nseq(__anonymous_0(element(pattern),COMMA)) -> element(pattern) . COMMA nseq(__anonymous_0(element(pattern),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(pattern)
##
interactive_expr: ES6FUN LPAR LBRACKET Ident ZWSP
##
## Ends in an error in state: 93.
##
## nsepseq(element(param_pattern),COMMA) -> element(param_pattern) . [ RBRACKET ]
## nsepseq(element(param_pattern),COMMA) -> element(param_pattern) . COMMA nsepseq(element(param_pattern),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(param_pattern),COMMA)) -> element(param_pattern) . COMMA [ RBRACKET ]
## nseq(__anonymous_0(element(param_pattern),COMMA)) -> element(param_pattern) . COMMA nseq(__anonymous_0(element(param_pattern),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(param_pattern)
##

Ill-formed array pattern.
At this point, one of following is expected:
  * a comma ',' followed by another element pattern;
  * a closing bracket ']' if no more elements.

contract: Const LBRACKET Bytes COMMA ZWSP
##
## Ends in an error in state: 552.
##
## nsepseq(element(pattern),COMMA) -> element(pattern) COMMA . nsepseq(element(pattern),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(pattern),COMMA)) -> element(pattern) COMMA . [ RBRACKET ]
## nseq(__anonymous_0(element(pattern),COMMA)) -> element(pattern) COMMA . nseq(__anonymous_0(element(pattern),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(pattern) COMMA
##
interactive_expr: ES6FUN LPAR LBRACKET Ident COMMA ZWSP
##
## Ends in an error in state: 94.
##
## nsepseq(element(param_pattern),COMMA) -> element(param_pattern) COMMA . nsepseq(element(param_pattern),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(param_pattern),COMMA)) -> element(param_pattern) COMMA . [ RBRACKET ]
## nseq(__anonymous_0(element(param_pattern),COMMA)) -> element(param_pattern) COMMA . nseq(__anonymous_0(element(param_pattern),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(param_pattern) COMMA
##

Ill-formed array pattern.
At this point, one of the following is expected:
  * a pattern matching an element;
  * a closing bracket ']' if no more elements.

interactive_expr: MINUS2 ZWSP
##
## Ends in an error in state: 32.
##
## pre_decr_expr -> MINUS2 . WILD [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
## pre_decr_expr -> MINUS2 . Ident [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## MINUS2
##

Ill-formed decrement.
At this point, the decremented variable is expected.

interactive_expr: LBRACKET ZWSP
##
## Ends in an error in state: 52.
##
## brackets(sep_or_term(element(expr),COMMA)) -> LBRACKET . sep_or_term(element(expr),COMMA) RBRACKET [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LBRACKET
##

Ill-formed array expression.
At this point, the first element is expected.

interactive_expr: LBRACE ZWSP
##
## Ends in an error in state: 53.
##
## braces(sep_or_term(property(expr),COMMA)) -> LBRACE . sep_or_term(property(expr),COMMA) RBRACE [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr As ]
## braces(update_expr) -> LBRACE . update_expr RBRACE [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr As ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed record or record update.
At this point, one of the following is expected:
  * the first field of a record;
  * a rest expression ('...') denoting the record being updated.

interactive_expr: LBRACE ELLIPSIS ZWSP
##
## Ends in an error in state: 56.
##
## update_expr -> ELLIPSIS . expr COMMA updates [ RBRACE ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS
##

Ill-formed record update.
At this point, the record to update is expected.

interactive_expr: Function ZWSP
##
## Ends in an error in state: 62.
##
## function_expr -> Function . fun_par_params braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function . fun_par_params ret_type braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function . type_vars fun_par_params braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function . type_vars fun_par_params ret_type braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function
##

Ill-formed function expression.
At this point, one of the following is expected:
  * an opening parenthesis '(' optionally followed by parameters;
  * an opening chevron '<' optionally followed by type parameters.

interactive_expr: ES6FUN LPAR ZWSP
##
## Ends in an error in state: 63.
##
## par(fun_params) -> LPAR . fun_params RPAR [ LBRACE COLON ARROW ]
## par(fun_params) -> LPAR . fun_params PARAMS RPAR [ LBRACE COLON ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed function.
At this point, one of the following is expected:
  * the first parameter (variable);
  * a closing parenthesis ')' if no parameters.

interactive_expr: ES6FUN LPAR Ident ZWSP
##
## Ends in an error in state: 98.
##
## fun_param -> param_pattern . type_annotation(type_expr) [ RPAR PARAMS COMMA ]
## fun_param -> param_pattern . [ RPAR PARAMS COMMA ]
##
## The known suffix of the stack is as follows:
## param_pattern
##

Ill-formed function parameter.
At this point, one of the following is expected:
  * a comma ',' followed by another parameter;
  * a colon ':' followed by the type of the parameter;
  * a closing parenthesis ')' if no more parameters.

interactive_expr: ES6FUN LPAR PARAMS ZWSP
##
## Ends in an error in state: 215.
##
## par(fun_params) -> LPAR fun_params PARAMS . RPAR [ LBRACE COLON ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR fun_params PARAMS
##

Ill-formed function.
At this point, a closing parenthesis ')' is expected.

interactive_expr: ES6FUN LPAR Ident COLON Ident XOR
##
## Ends in an error in state: 217.
##
## nsepseq(fun_param,COMMA) -> fun_param . [ RPAR PARAMS ]
## nsepseq(fun_param,COMMA) -> fun_param . COMMA nsepseq(fun_param,COMMA) [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_param,COMMA)) -> fun_param . COMMA [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_param,COMMA)) -> fun_param . COMMA nseq(__anonymous_0(fun_param,COMMA)) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## fun_param
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 208, spurious reduction of production type_annotation(type_expr) -> COLON type_expr
## In state 209, spurious reduction of production fun_param -> param_pattern type_annotation(type_expr)
##

Ill-formed function.
At this point, if the parameter is complete, one of the following is
expected:
  * a comma ',' followed by another parameter;
  * a closing parenthesis ')' if no more parameters.

interactive_expr: ES6FUN LPAR Ident COMMA ZWSP
##
## Ends in an error in state: 218.
##
## nsepseq(fun_param,COMMA) -> fun_param COMMA . nsepseq(fun_param,COMMA) [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_param,COMMA)) -> fun_param COMMA . [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_param,COMMA)) -> fun_param COMMA . nseq(__anonymous_0(fun_param,COMMA)) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## fun_param COMMA
##

Ill-formed function.
At this point, one of the following is expected:
  * another parameter;
  * a closing parenthesis ')' otherwise.

interactive_expr: Function LT GT XOR
##
## Ends in an error in state: 221.
##
## function_expr -> Function type_vars . fun_par_params braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function type_vars . fun_par_params ret_type braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##

Ill-formed function expression.
At this point, an opening parenthesis '(' is expected.

interactive_expr: Function LT GT LPAR PARAMS RPAR ZWSP
##
## Ends in an error in state: 223.
##
## function_expr -> Function type_vars fun_par_params . braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function type_vars fun_par_params . ret_type braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function type_vars fun_par_params
##
interactive_expr: Function LPAR PARAMS RPAR ZWSP
##
## Ends in an error in state: 1144.
##
## function_expr -> Function fun_par_params . braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## function_expr -> Function fun_par_params . ret_type braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function fun_par_params
##

Ill-formed function expression.
At this point, one of the following is expected:
  * a colon ':' followed by the return type;
  * a block of statements starting with an opening brace '{'.

interactive_expr: LT GT ES6FUN LPAR PARAMS RPAR ZWSP
##
## Ends in an error in state: 451.
##
## arrow_fun_expr -> type_vars ES6FUN fun_par_params . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars ES6FUN fun_par_params . ret_type ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN fun_par_params
##
interactive_expr: ES6FUN LPAR PARAMS RPAR ZWSP
##
## Ends in an error in state: 477.
##
## arrow_fun_expr -> ES6FUN fun_par_params . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> ES6FUN fun_par_params . ret_type ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN fun_par_params
##

Ill-formed arrow function.
At this point, one of the following is expected:
  * a colon ':' followed by the return type;
  * an arrow '=>' followed by the body.

interactive_expr: ES6FUN LPAR PARAMS RPAR COLON ZWSP
##
## Ends in an error in state: 452.
##
## type_annotation(__anonymous_7) -> COLON . option(ES6FUN) core_type [ LBRACE ARROW ]
##
## The known suffix of the stack is as follows:
## COLON
##
interactive_expr: ES6FUN LPAR PARAMS RPAR COLON ES6FUN ZWSP
##
## Ends in an error in state: 454.
##
## type_annotation(__anonymous_7) -> COLON option(ES6FUN) . core_type [ LBRACE ARROW ]
##
## The known suffix of the stack is as follows:
## COLON option(ES6FUN)
##

Ill-formed function.
At this point, a type (without parentheses) is expected.


interactive_expr: Function LT GT LPAR PARAMS RPAR COLON Ident XOR
##
## Ends in an error in state: 1141.
##
## function_expr -> Function type_vars fun_par_params ret_type . braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function type_vars fun_par_params ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##
interactive_expr: Function LPAR PARAMS RPAR COLON Ident XOR
##
## Ends in an error in state: 1145.
##
## function_expr -> Function fun_par_params ret_type . braces(statements) [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## Function fun_par_params ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##

Ill-formed function expression.
At this point, if the return type is complete, a block of statements
is expected to start with an opening brace '{'.

interactive_expr: ES6FUN ZWSP
##
## Ends in an error in state: 239.
##
## arrow_fun_expr -> ES6FUN . fun_par_params ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> ES6FUN . fun_par_params ret_type ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> ES6FUN . WILD ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> ES6FUN . Ident ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN
##
interactive_expr: LT GT XOR
##
## Ends in an error in state: 287.
##
## arrow_fun_expr -> type_vars . ES6FUN fun_par_params ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars . ES6FUN fun_par_params ret_type ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars . ES6FUN WILD ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars . ES6FUN Ident ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##
interactive_expr: LT GT ES6FUN ZWSP
##
## Ends in an error in state: 288.
##
## arrow_fun_expr -> type_vars ES6FUN . fun_par_params ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars ES6FUN . fun_par_params ret_type ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars ES6FUN . WILD ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## arrow_fun_expr -> type_vars ES6FUN . Ident ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN
##

Ill-formed arrow function.
At this point, one of the following is expected:
  * an opening parenthesis '(' optionally followed by parameters;
  * a single parameter (variable).

interactive_expr: ES6FUN Ident ZWSP
##
## Ends in an error in state: 474.
##
## arrow_fun_expr -> ES6FUN Ident . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN Ident
##
interactive_expr: LT GT ES6FUN Ident ZWSP
##
## Ends in an error in state: 448.
##
## arrow_fun_expr -> type_vars ES6FUN Ident . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN Ident
##
interactive_expr: ES6FUN WILD ZWSP
##
## Ends in an error in state: 240.
##
## arrow_fun_expr -> ES6FUN WILD . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN WILD
##
interactive_expr: LT GT ES6FUN WILD ZWSP
##
## Ends in an error in state: 289.
##
## arrow_fun_expr -> type_vars ES6FUN WILD . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN WILD
##

Ill-formed arrow function.
At this point, an arrow '=>' is expected.

interactive_expr: ES6FUN Ident ARROW ZWSP
##
## Ends in an error in state: 475.
##
## arrow_fun_expr -> ES6FUN Ident ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN Ident ARROW
##
interactive_expr: LT GT ES6FUN Ident ARROW ZWSP
##
## Ends in an error in state: 449.
##
## arrow_fun_expr -> type_vars ES6FUN Ident ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN Ident ARROW
##
interactive_expr: LT GT ES6FUN LPAR RPAR COLON Ident ARROW ZWSP
##
## Ends in an error in state: 460.
##
## arrow_fun_expr -> type_vars ES6FUN fun_par_params ret_type ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN fun_par_params ret_type ARROW
##
interactive_expr: ES6FUN LPAR RPAR COLON Ident ARROW ZWSP
##
## Ends in an error in state: 481.
##
## arrow_fun_expr -> ES6FUN fun_par_params ret_type ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN fun_par_params ret_type ARROW
##
interactive_expr: LT GT ES6FUN LPAR PARAMS RPAR ARROW ZWSP
##
## Ends in an error in state: 456.
##
## arrow_fun_expr -> type_vars ES6FUN fun_par_params ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN fun_par_params ARROW
##
interactive_expr: ES6FUN LPAR PARAMS RPAR ARROW ZWSP
##
## Ends in an error in state: 478.
##
## arrow_fun_expr -> ES6FUN fun_par_params ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN fun_par_params ARROW
##
interactive_expr: ES6FUN WILD ARROW ZWSP
##
## Ends in an error in state: 241.
##
## arrow_fun_expr -> ES6FUN WILD ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN WILD ARROW
##
interactive_expr: LT GT ES6FUN WILD ARROW ZWSP
##
## Ends in an error in state: 290.
##
## arrow_fun_expr -> type_vars ES6FUN WILD ARROW . fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN WILD ARROW
##

Ill-formed arrow function.
At this point, one of the following is expected:
  * the body as a non-record expression (use parentheses otherwise);
  * a block of statements starting with an opening brace '{'.

interactive_expr: ContractOf ZWSP
##
## Ends in an error in state: 242.
##
## contract_of_expr -> ContractOf . par(namespace_selection) [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## ContractOf
##

Ill-formed contract from a class.
At this point, an opening parenthesis '(' is expected.

interactive_expr: ContractOf LPAR ZWSP
##
## Ends in an error in state: 243.
##
## par(namespace_selection) -> LPAR . namespace_selection RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(namespace_selection) -> LPAR . namespace_selection PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed contract from a class.
At this point, a class name is expected.

interactive_expr: ContractOf LPAR UIdent ZWSP
##
## Ends in an error in state: 244.
##
## par(namespace_selection) -> LPAR namespace_selection . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(namespace_selection) -> LPAR namespace_selection . PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR namespace_selection
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 110, spurious reduction of production namespace_selection -> namespace_name
##
interactive_expr: ContractOf LPAR UIdent PARAMS ZWSP
##
## Ends in an error in state: 246.
##
## par(namespace_selection) -> LPAR namespace_selection PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR namespace_selection PARAMS
##

Ill-formed contract from a class.
At this point, a closing parenthesis ')' is expected.

interactive_expr: Ident LBRACKET ZWSP
##
## Ends in an error in state: 6.
##
## brackets(Int) -> LBRACKET . Int RBRACKET [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DOT DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
## brackets(String) -> LBRACKET . String RBRACKET [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DOT DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LBRACKET
##

Ill-formed field selection.
At this point, one of the following is expected:
  * an integer denoting the field,
  * a string denoting the field.

interactive_expr: Ident LBRACKET String ZWSP
##
## Ends in an error in state: 7.
##
## brackets(String) -> LBRACKET String . RBRACKET [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DOT DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LBRACKET String
##
interactive_expr: Ident LBRACKET Int ZWSP
##
## Ends in an error in state: 9.
##
## brackets(Int) -> LBRACKET Int . RBRACKET [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DOT DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LBRACKET Int
##

Ill-formed field selection.
At this point, a closing bracket ']' is expected.

interactive_expr: Ident DOT ZWSP
##
## Ends in an error in state: 11.
##
## selection -> DOT . property_name [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM_EQ REM RBRACKET RBRACE QMARK PLUS_EQ PLUS PARAMS OR Namespace NE MULT_EQ MINUS_EQ MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EQ EOF Directive Default DOT DIV_EQ Continue Const Case COMMA COLON Break BIT_XOR_EQ BIT_XOR BIT_SR_EQ BIT_SL_EQ BIT_SL BIT_OR_EQ BIT_AND_EQ BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## DOT
##

Ill-formed field selection.
At this point, a field name is expected.

interactive_expr: UIdent DOT ZWSP
##
## Ends in an error in state: 261.
##
## namespace_path(selected_expr) -> namespace_name DOT . namespace_path(selected_expr) [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## namespace_path(selected_expr) -> namespace_name DOT . selected_expr [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## namespace_name DOT
##

Ill-formed namespace selection.
At this point, one of the following is expected:
  * a namespace name;
  * a string denoting a constructor;
  * a record or array.


interactive_expr: Ident REM_EQ ZWSP
##
## Ends in an error in state: 320.
##
## bin_op(left_hs,REM_EQ,expr) -> left_hs REM_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs REM_EQ
##
interactive_expr: Ident PLUS_EQ ZWSP
##
## Ends in an error in state: 421.
##
## bin_op(left_hs,PLUS_EQ,expr) -> left_hs PLUS_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs PLUS_EQ
##
interactive_expr: Ident MULT_EQ ZWSP
##
## Ends in an error in state: 423.
##
## bin_op(left_hs,MULT_EQ,expr) -> left_hs MULT_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs MULT_EQ
##
interactive_expr: Ident MINUS_EQ ZWSP
##
## Ends in an error in state: 425.
##
## bin_op(left_hs,MINUS_EQ,expr) -> left_hs MINUS_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs MINUS_EQ
##
interactive_expr: Ident EQ ZWSP
##
## Ends in an error in state: 427.
##
## bin_op(left_hs,EQ,expr) -> left_hs EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs EQ
##
interactive_expr: Ident DIV_EQ ZWSP
##
## Ends in an error in state: 429.
##
## bin_op(left_hs,DIV_EQ,expr) -> left_hs DIV_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs DIV_EQ
##
interactive_expr: Ident BIT_XOR_EQ ZWSP
##
## Ends in an error in state: 431.
##
## bin_op(left_hs,BIT_XOR_EQ,expr) -> left_hs BIT_XOR_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs BIT_XOR_EQ
##
interactive_expr: Ident BIT_SR_EQ ZWSP
##
## Ends in an error in state: 433.
##
## bin_op(left_hs,BIT_SR_EQ,expr) -> left_hs BIT_SR_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs BIT_SR_EQ
##
interactive_expr: Ident BIT_SL_EQ ZWSP
##
## Ends in an error in state: 435.
##
## bin_op(left_hs,BIT_SL_EQ,expr) -> left_hs BIT_SL_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs BIT_SL_EQ
##
interactive_expr: Ident BIT_OR_EQ ZWSP
##
## Ends in an error in state: 437.
##
## bin_op(left_hs,BIT_OR_EQ,expr) -> left_hs BIT_OR_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs BIT_OR_EQ
##
interactive_expr: Ident BIT_AND_EQ ZWSP
##
## Ends in an error in state: 439.
##
## bin_op(left_hs,BIT_AND_EQ,expr) -> left_hs BIT_AND_EQ . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs BIT_AND_EQ
##

Ill-formed assigment.
At this point, the right-hand side is expected as an expression.

interactive_expr: LT GT ES6FUN LPAR PARAMS RPAR COLON Ident XOR
##
## Ends in an error in state: 459.
##
## arrow_fun_expr -> type_vars ES6FUN fun_par_params ret_type . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## type_vars ES6FUN fun_par_params ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##
interactive_expr: ES6FUN LPAR PARAMS RPAR COLON Ident XOR
##
## Ends in an error in state: 480.
##
## arrow_fun_expr -> ES6FUN fun_par_params ret_type . ARROW fun_body [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN fun_par_params ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##

Ill-formed arrow function.
At this point, if the return type is complete, an arrow '=>' is
expected.


interactive_expr: LBRACE Ident ZWSP
##
## Ends in an error in state: 1152.
##
## property(expr) -> property_id . [ RBRACE COMMA ]
## property(expr) -> property_id . COLON expr [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id
##

Ill-formed record.
At this point, one of the following is expected:
  * a colon ':' followed by an expression;
  * a comma ',' if name punning;
  * a closing brace '}' if no more fields.

interactive_expr: LBRACE Ident COLON ZWSP
##
## Ends in an error in state: 1153.
##
## property(expr) -> property_id COLON . expr [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_id COLON
##

Ill-formed record.
At this point, an expression is expected for the field.

interactive_expr: LBRACE Ident COMMA ZWSP
##
## Ends in an error in state: 1156.
##
## nsepseq(property(expr),COMMA) -> property(expr) COMMA . nsepseq(property(expr),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property(expr),COMMA)) -> property(expr) COMMA . [ RBRACE ]
## nseq(__anonymous_0(property(expr),COMMA)) -> property(expr) COMMA . nseq(__anonymous_0(property(expr),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property(expr) COMMA
##

Ill-formed record.
At this point, one of the following is expected:
  * a field;
  * a closing brace '}' if no more fields.

interactive_expr: LBRACKET ELLIPSIS ZWSP
##
## Ends in an error in state: 1166.
##
## element(expr) -> ELLIPSIS . expr [ RBRACKET COMMA ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS
##

Ill-formed array.
At this point, and expression denoting an array is expected.

contract: Namespace UIdent LBRACE Switch ZWSP
##
## Ends in an error in state: 236.
##
## switch_stmt -> Switch . par(switch_subject) braces(cases) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Switch
##

Ill-formed switch.
At this point, an opening parenthesis '(' is expected, followed by an
expression.

contract: Namespace UIdent LBRACE Switch LPAR ZWSP
##
## Ends in an error in state: 237.
##
## par(switch_subject) -> LPAR . switch_subject RPAR [ LBRACE ]
## par(switch_subject) -> LPAR . switch_subject PARAMS RPAR [ LBRACE ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed switch.
At this point, the expression used to switch is expected.

contract: Let ZWSP
##
## Ends in an error in state: 499.
##
## value_decl -> Let . bindings [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Let
##

Ill-formed value declaration.
At this point, a pattern is expected, e.g. a variable.

contract: Const Bytes ZWSP
##
## Ends in an error in state: 569.
##
## val_binding -> pattern . EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
## val_binding -> pattern . binding_type EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## pattern
##
contract: Const Default COLON Ident XOR
##
## Ends in an error in state: 564.
##
## val_binding -> Default binding_type . EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## Default binding_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 561, spurious reduction of production gen_type_expr -> type_expr
## In state 562, spurious reduction of production type_annotation(gen_type_expr) -> COLON gen_type_expr
## In state 563, spurious reduction of production binding_type -> type_annotation(gen_type_expr)
##
contract: Const Default ZWSP
##
## Ends in an error in state: 555.
##
## val_binding -> Default . EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
## val_binding -> Default . binding_type EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## Default
##

Ill-formed value declaration.
At this point, one of the following is expected:
  * a colon ':' followed by the type of the value;
  * the assignment symbol '=' followed by an expression.

contract: Const Bytes COLON ZWSP
##
## Ends in an error in state: 558.
##
## type_annotation(gen_type_expr) -> COLON . gen_type_expr [ SEMI RBRACE EQ COMMA ]
##
## The known suffix of the stack is as follows:
## COLON
##

Ill-formed type annotation.
At this point, one of the following is expected:
  * a type;
  * an opening chevron '<' followed by type variables if the type is
    generic.

contract: Const Bytes COLON LT GT XOR
##
## Ends in an error in state: 559.
##
## gen_type_expr -> type_vars . type_expr [ SEMI RBRACE EQ COMMA ]
##
## The known suffix of the stack is as follows:
## type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##

Ill-formed generic type annotation.
At this point, if the type variables are complete, a type is expected.

contract: Const Bytes COLON Ident XOR
##
## Ends in an error in state: 572.
##
## val_binding -> pattern binding_type . EQ expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## pattern binding_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 561, spurious reduction of production gen_type_expr -> type_expr
## In state 562, spurious reduction of production type_annotation(gen_type_expr) -> COLON gen_type_expr
## In state 563, spurious reduction of production binding_type -> type_annotation(gen_type_expr)
##

Ill-formed value declaration.
At this point, if the type is complete, the assignment symbol '=' is
expected, followed by an expression.

interactive_expr: Bytes WILD
##
## Ends in an error in state: 1238.
##
## interactive_expr -> expr . EOF [ # ]
##
## The known suffix of the stack is as follows:
## expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
##

Ill-formed expression.
At this point, if the expression is complete, the end of the input is
expected.

contract: Bytes LPAR RPAR ZWSP
##
## Ends in an error in state: 1233.
##
## contract -> statements . EOF [ # ]
##
## The known suffix of the stack is as follows:
## statements
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 334, spurious reduction of production app_expr -> call_expr
## In state 848, spurious reduction of production expr_stmt -> app_expr
## In state 959, spurious reduction of production non_if_stmt(statement) -> expr_stmt
## In state 876, spurious reduction of production statement -> non_if_stmt(statement)
## In state 1076, spurious reduction of production last_or_more(statement) -> statement
## In state 1081, spurious reduction of production statements -> last_or_more(statement)
##

Ill-formed contract.
At this point, if the statement is complete, one of the following is
expected:
  * a semicolon ';' followed by another statement;
  * a statement;
  * the end of the contract.

contract: Interface ZWSP
##
## Ends in an error in state: 578.
##
## interface_decl -> Interface . interface_name interface_body [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## interface_decl -> Interface . interface_name extends interface_body [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Interface
##

Ill-formed interface declaration.
At this point, the name of the interface is expected.

contract: Interface UIdent ZWSP
##
## Ends in an error in state: 580.
##
## interface_decl -> Interface interface_name . interface_body [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## interface_decl -> Interface interface_name . extends interface_body [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Interface interface_name
##

Ill-formed interface declaration.
At this point, one of the following is expected:
  * an opening brace '{' is expected, followed by entries;
  * the keyword 'extends'.

contract: Interface UIdent LBRACE ZWSP
##
## Ends in an error in state: 581.
##
## braces(interface_entries) -> LBRACE . interface_entries RBRACE [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case COMMA Bytes Break ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed interface.
At this point, a property name is expected, with a type annotation.


contract: Import ZWSP
##
## Ends in an error in state: 609.
##
## import_decl -> Import . namespace_name EQ namespace_selection [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
## import_decl -> Import . TIMES As namespace_name From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
## import_decl -> Import . braces(sep_or_term(variable,COMMA)) From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import
##

Ill-formed import declaration.
At this point, one of the following is expected:
  * a namespace name if aliasing a namespace;
  * the symbol '*' to import all entries from a namespace;
  * an opening brace '{' to import a list of entries.

contract: Import TIMES ZWSP
##
## Ends in an error in state: 610.
##
## import_decl -> Import TIMES . As namespace_name From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import TIMES
##

Ill-formed import declaration.
At this point, the keyword 'as' is expected.

contract: Import TIMES As ZWSP
##
## Ends in an error in state: 611.
##
## import_decl -> Import TIMES As . namespace_name From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import TIMES As
##

Ill-formed import declaration.
At this point, the name of the namespace is expected.

contract: Import TIMES As UIdent ZWSP
##
## Ends in an error in state: 612.
##
## import_decl -> Import TIMES As namespace_name . From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import TIMES As namespace_name
##
contract: Import LBRACE RBRACE ZWSP
##
## Ends in an error in state: 633.
##
## import_decl -> Import braces(sep_or_term(variable,COMMA)) . From file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import braces(sep_or_term(variable,COMMA))
##

Ill-formed import declaration.
At this point, the keyword 'from' is expected.

contract: Import TIMES As UIdent From ZWSP
##
## Ends in an error in state: 613.
##
## import_decl -> Import TIMES As namespace_name From . file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import TIMES As namespace_name From
##
contract: Import LBRACE RBRACE From ZWSP
##
## Ends in an error in state: 634.
##
## import_decl -> Import braces(sep_or_term(variable,COMMA)) From . file_path [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import braces(sep_or_term(variable,COMMA)) From
##

Ill-formed import declaration.
At this point, a file path to a LIGO source is expected as a string.

contract: Import LBRACE ZWSP
##
## Ends in an error in state: 616.
##
## braces(sep_or_term(variable,COMMA)) -> LBRACE . sep_or_term(variable,COMMA) RBRACE [ From ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed import declaration.
At this point, the name of an imported type or value is expected.

contract: Import LBRACE WILD ZWSP
##
## Ends in an error in state: 617.
##
## nsepseq(variable,COMMA) -> WILD . [ RBRACE ]
## nsepseq(variable,COMMA) -> WILD . COMMA nsepseq(variable,COMMA) [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> WILD . COMMA [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> WILD . COMMA nseq(__anonymous_0(variable,COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## WILD
##
contract: Import LBRACE Ident ZWSP
##
## Ends in an error in state: 619.
##
## nsepseq(variable,COMMA) -> Ident . [ RBRACE ]
## nsepseq(variable,COMMA) -> Ident . COMMA nsepseq(variable,COMMA) [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> Ident . COMMA [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> Ident . COMMA nseq(__anonymous_0(variable,COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## Ident
##

Ill-formed import declaration.
At this point, one of the following is expected:
  * a comma ',' followed by the name of an imported type or value;
  * a closing brace '}' if no more imports.

contract: Import LBRACE Ident COMMA ZWSP
##
## Ends in an error in state: 620.
##
## nsepseq(variable,COMMA) -> Ident COMMA . nsepseq(variable,COMMA) [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> Ident COMMA . [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> Ident COMMA . nseq(__anonymous_0(variable,COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## Ident COMMA
##
contract: Import LBRACE WILD COMMA ZWSP
##
## Ends in an error in state: 618.
##
## nsepseq(variable,COMMA) -> WILD COMMA . nsepseq(variable,COMMA) [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> WILD COMMA . [ RBRACE ]
## nseq(__anonymous_0(variable,COMMA)) -> WILD COMMA . nseq(__anonymous_0(variable,COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## WILD COMMA
##

Ill-formed import declaration.
At this point, one of the following is expected:
  * the name of an imported type or value;
  * a closing brace '}' if no more imports.

contract: Import UIdent ZWSP
##
## Ends in an error in state: 630.
##
## import_decl -> Import namespace_name . EQ namespace_selection [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import namespace_name
##

Ill-formed import declaration.
At this point, the assignment symbol '=' is expected.

contract: Import UIdent EQ ZWSP
##
## Ends in an error in state: 631.
##
## import_decl -> Import namespace_name EQ . namespace_selection [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Import namespace_name EQ
##

Ill-formed import declaration.
At this point, a namespace name is expected.

contract: Namespace UIdent LBRACE If ZWSP
##
## Ends in an error in state: 636.
##
## if_else_stmt(catenable_stmt) -> If . par(if_cond) before_else Else catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(catenable_stmt) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If . par(if_cond) before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If . par(if_cond) before_else Else stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_ending_with_expr) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(catenable_stmt) -> If . par(if_cond) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If . par(if_cond) statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_ending_with_expr) -> If . par(if_cond) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If
##
contract: Namespace UIdent LBRACE Return If ZWSP
##
## Ends in an error in state: 1047.
##
## if_else_stmt(statement) -> If . par(if_cond) before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If . par(if_cond) before_else Else stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(statement) -> If . par(if_cond) statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If . par(if_cond) stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If
##
contract: If LPAR Bytes RPAR If ZWSP
##
## Ends in an error in state: 646.
##
## if_else_stmt(before_else) -> If . par(if_cond) before_else Else before_else [ Else ]
## if_else_stmt(before_else) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE before_else [ Else ]
## if_else_stmt(catenable_stmt) -> If . par(if_cond) before_else Else catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(catenable_stmt) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(closed_non_if_stmt) -> If . par(if_cond) before_else Else closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(closed_non_if_stmt) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(statement) -> If . par(if_cond) before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If . par(if_cond) before_else Else stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_ending_with_expr) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(catenable_stmt) -> If . par(if_cond) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If . par(if_cond) statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_ending_with_expr) -> If . par(if_cond) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If
##
contract: Return If LPAR Bytes RPAR If ZWSP
##
## Ends in an error in state: 978.
##
## if_else_stmt(__anonymous_6) -> If . par(if_cond) before_else Else type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(__anonymous_6) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(before_else) -> If . par(if_cond) before_else Else before_else [ Else ]
## if_else_stmt(before_else) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE before_else [ Else ]
## if_else_stmt(closed_non_if_stmt) -> If . par(if_cond) before_else Else closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(closed_non_if_stmt) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(export(type_decl)) -> If . par(if_cond) before_else Else export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If . par(if_cond) before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(__anonymous_6) -> If . par(if_cond) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(export(type_decl)) -> If . par(if_cond) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If . par(if_cond) statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If
##
contract: Return While LPAR Bytes RPAR If ZWSP
##
## Ends in an error in state: 974.
##
## if_else_stmt(__anonymous_6) -> If . par(if_cond) before_else Else type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(__anonymous_6) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If . par(if_cond) before_else Else export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If . par(if_cond) before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(__anonymous_6) -> If . par(if_cond) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(export(type_decl)) -> If . par(if_cond) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If . par(if_cond) statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If . par(if_cond) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If
##

Ill-formed conditional statement.
At this point, an opening parenthesis '(' is expected, followed by the
condition.

contract: Namespace UIdent LBRACE If LPAR ZWSP
##
## Ends in an error in state: 637.
##
## par(if_cond) -> LPAR . if_cond RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(if_cond) -> LPAR . if_cond PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed conditional statement.
At this point, the condition is expected as a boolean expression.

contract: Function ZWSP
##
## Ends in an error in state: 648.
##
## fun_decl -> Function . fun_name option(ES6FUN) par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function . fun_name option(ES6FUN) par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function . fun_name type_vars option(ES6FUN) par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function . fun_name type_vars option(ES6FUN) par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function
##

Ill-formed function declaration.
At this point, the function name is expected.

contract: Function Ident ZWSP
##
## Ends in an error in state: 652.
##
## fun_decl -> Function fun_name . option(ES6FUN) par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name . option(ES6FUN) par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name . type_vars option(ES6FUN) par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name . type_vars option(ES6FUN) par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name
##

Ill-formed function declaration.
At this point, one of the following is expected:
  * an opening parenthesis '(' optionally followed by parameters;
  * an opening chevron '<' optionally followed by type parameters.

contract: Function Ident LT GT XOR
##
## Ends in an error in state: 653.
##
## fun_decl -> Function fun_name type_vars . option(ES6FUN) par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name type_vars . option(ES6FUN) par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##
contract: Function Ident LT GT ES6FUN ZWSP
##
## Ends in an error in state: 654.
##
## fun_decl -> Function fun_name type_vars option(ES6FUN) . par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name type_vars option(ES6FUN) . par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name type_vars option(ES6FUN)
##
contract: Function Ident ES6FUN ZWSP
##
## Ends in an error in state: 659.
##
## fun_decl -> Function fun_name option(ES6FUN) . par(fun_params) braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name option(ES6FUN) . par(fun_params) ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name option(ES6FUN)
##

Ill-formed function declaration.
At this point, an opening parenthesis '(' is expected.

contract: Function Ident LT GT LPAR RPAR ZWSP
##
## Ends in an error in state: 655.
##
## fun_decl -> Function fun_name type_vars option(ES6FUN) par(fun_params) . braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name type_vars option(ES6FUN) par(fun_params) . ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name type_vars option(ES6FUN) par(fun_params)
##
contract: Function Ident LPAR RPAR ZWSP
##
## Ends in an error in state: 660.
##
## fun_decl -> Function fun_name option(ES6FUN) par(fun_params) . braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## fun_decl -> Function fun_name option(ES6FUN) par(fun_params) . ret_type braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name option(ES6FUN) par(fun_params)
##

Ill-formed function declaration.
At this point, one of the following is expected:
  * a colon ':' followed by the return type;
  * the body as a block of statements starting with an opening brace
    '{'.

contract: Function Ident LT GT LPAR RPAR COLON Ident XOR
##
## Ends in an error in state: 656.
##
## fun_decl -> Function fun_name type_vars option(ES6FUN) par(fun_params) ret_type . braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name type_vars option(ES6FUN) par(fun_params) ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##
contract: Function Ident LPAR RPAR COLON Ident XOR
##
## Ends in an error in state: 661.
##
## fun_decl -> Function fun_name option(ES6FUN) par(fun_params) ret_type . braces(statements) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Function fun_name option(ES6FUN) par(fun_params) ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##

Ill-formed function declaration.
At this point, if the return type is complete, the body is expected as
a block of statements starting with an opening brace '{'.

contract: Namespace UIdent LBRACE For LPAR ZWSP
##
## Ends in an error in state: 665.
##
## par(range_for) -> LPAR . range_for RPAR [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## par(range_for) -> LPAR . range_for PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## par(range_of) -> LPAR . range_of RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(range_of) -> LPAR . range_of PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * the initialisation as a statement;
  * a semicolon ';' if no initialisation;
  * the keywords 'const' or 'let' followed by a variable.

contract: Namespace UIdent LBRACE For LPAR SEMI ZWSP
##
## Ends in an error in state: 666.
##
## range_for -> SEMI . SEMI [ RPAR PARAMS ]
## range_for -> SEMI . SEMI afterthought [ RPAR PARAMS ]
## range_for -> SEMI . condition SEMI [ RPAR PARAMS ]
## range_for -> SEMI . condition SEMI afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## SEMI
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * the invariant as a boolean expression;
  * a semicolon ';' if no condition.

interactive_expr: Bytes As LBRACE ZWSP
##
## Ends in an error in state: 117.
##
## braces(sep_or_term(property_decl,SEMI)) -> LBRACE . sep_or_term(property_decl,SEMI) RBRACE [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed record type.
At this point, one of the following is expected:
  * a field name,
  * an integer denoting the field,
  * a string denoting the field.

interactive_type_expr: LBRACE Ident SEMI ZWSP
##
## Ends in an error in state: 123.
##
## nsepseq(property_decl,SEMI) -> property_decl SEMI . nsepseq(property_decl,SEMI) [ RBRACE ]
## nseq(__anonymous_0(property_decl,SEMI)) -> property_decl SEMI . [ RBRACE ]
## nseq(__anonymous_0(property_decl,SEMI)) -> property_decl SEMI . nseq(__anonymous_0(property_decl,SEMI)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_decl SEMI
##

Ill-formed record type.
At this point, one of the following is expected:
  * a field name,
  * an integer denoting the field,
  * a string denoting the field;
  * a closing brace '}' if no more fields;

interactive_expr: Bytes As LBRACE Ident ZWSP
##
## Ends in an error in state: 120.
##
## property_decl -> property_id . [ SEMI RBRACE ]
## property_decl -> property_id . type_annotation(type_expr) [ SEMI RBRACE ]
##
## The known suffix of the stack is as follows:
## property_id
##

Ill-formed record type.
At this point, one of the following is expected:
  * a semicolon ';';
  * a closing brace '}' if no more fields;
  * a colon ':' followed by the type of the field.

interactive_expr: Bytes As LBRACE Ident COLON Ident XOR
##
## Ends in an error in state: 122.
##
## nsepseq(property_decl,SEMI) -> property_decl . [ RBRACE ]
## nsepseq(property_decl,SEMI) -> property_decl . SEMI nsepseq(property_decl,SEMI) [ RBRACE ]
## nseq(__anonymous_0(property_decl,SEMI)) -> property_decl . SEMI [ RBRACE ]
## nseq(__anonymous_0(property_decl,SEMI)) -> property_decl . SEMI nseq(__anonymous_0(property_decl,SEMI)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_decl
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 208, spurious reduction of production type_annotation(type_expr) -> COLON type_expr
## In state 121, spurious reduction of production property_decl -> property_id type_annotation(type_expr)
##

Ill-formed record type.
At this point, one of the following is expected:
  * a semicolon ';' followed by another field;
  * a closing brace '}' if no more fields.

interactive_expr: Bytes As ParameterOf ZWSP
##
## Ends in an error in state: 104.
##
## parameter_of_type -> ParameterOf . chevrons(namespace_selection) [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## ParameterOf
##

Ill-formed parameter of a contract class.
At this point, a class name is expected.

interactive_expr: Bytes As LPAR ZWSP
##
## Ends in an error in state: 115.
##
## par(type_expr) -> LPAR . type_expr RPAR [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
## par(type_expr) -> LPAR . type_expr PARAMS RPAR [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed parenthesised type.
At this point, a type is expected.

interactive_expr: Bytes As ES6FUN ZWSP
##
## Ends in an error in state: 131.
##
## fun_type -> ES6FUN . par(fun_type_params) ARROW type_expr [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN
##

Ill-formed function type.
At this point, an opening parenthesis '(' is expected.

interactive_expr: Bytes As ES6FUN LPAR ZWSP
##
## Ends in an error in state: 132.
##
## par(fun_type_params) -> LPAR . fun_type_params RPAR [ ARROW ]
## par(fun_type_params) -> LPAR . fun_type_params PARAMS RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed function type.
At this point, one of the following is expected:
  * the first parameter (variable);
  * a closing parenthesis ')' if no parameters.

interactive_expr: Bytes As ES6FUN LPAR Ident ZWSP
##
## Ends in an error in state: 135.
##
## fun_type_param -> Ident . type_annotation(type_expr) [ RPAR PARAMS COMMA ]
##
## The known suffix of the stack is as follows:
## Ident
##
contract: Bytes As ES6FUN LPAR WILD ZWSP
##
## Ends in an error in state: 133.
##
## fun_type_param -> WILD . type_annotation(type_expr) [ RPAR PARAMS COMMA ]
##
## The known suffix of the stack is as follows:
## WILD
##

Ill-formed function type.
At this point, a colon ':' is expected, followed by the type of the
parameter.

interactive_expr: Bytes As ES6FUN LPAR PARAMS ZWSP
##
## Ends in an error in state: 143.
##
## par(fun_type_params) -> LPAR fun_type_params PARAMS . RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR fun_type_params PARAMS
##

Ill-formed function type.
At this point, a closing parenthesis ')' is expected.

interactive_expr: Bytes As ES6FUN LPAR Ident COLON Ident XOR
##
## Ends in an error in state: 145.
##
## nsepseq(fun_type_param,COMMA) -> fun_type_param . [ RPAR PARAMS ]
## nsepseq(fun_type_param,COMMA) -> fun_type_param . COMMA nsepseq(fun_type_param,COMMA) [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_type_param,COMMA)) -> fun_type_param . COMMA [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_type_param,COMMA)) -> fun_type_param . COMMA nseq(__anonymous_0(fun_type_param,COMMA)) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## fun_type_param
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 208, spurious reduction of production type_annotation(type_expr) -> COLON type_expr
## In state 136, spurious reduction of production fun_type_param -> Ident type_annotation(type_expr)
##

Ill-formed function type.
At this point, if the parameter type is complete, one of the following
is expected:
  * a comma ',' followed by another parameter type;
  * a closing parenthesis ')' if no more parameters.

interactive_expr: Bytes As ES6FUN LPAR Ident COLON Ident COMMA ZWSP
##
## Ends in an error in state: 146.
##
## nsepseq(fun_type_param,COMMA) -> fun_type_param COMMA . nsepseq(fun_type_param,COMMA) [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_type_param,COMMA)) -> fun_type_param COMMA . [ RPAR PARAMS ]
## nseq(__anonymous_0(fun_type_param,COMMA)) -> fun_type_param COMMA . nseq(__anonymous_0(fun_type_param,COMMA)) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## fun_type_param COMMA
##

Ill-formed function type.
At this point, one of the following is expected:
  * another parameter as a variable;
  * a closing parenthesis ')' if no more parameters.

interactive_expr: Bytes As ES6FUN LPAR RPAR ZWSP
##
## Ends in an error in state: 149.
##
## fun_type -> ES6FUN par(fun_type_params) . ARROW type_expr [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN par(fun_type_params)
##

Ill-formed function type.
At this point, an arrow '=>' is expected, followed by the return type.

interactive_expr: Bytes As ES6FUN LPAR RPAR ARROW ZWSP
##
## Ends in an error in state: 150.
##
## fun_type -> ES6FUN par(fun_type_params) ARROW . type_expr [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## ES6FUN par(fun_type_params) ARROW
##

Ill-formed function type.
At this point, the return type is expected.

interactive_expr: Bytes As Ident LT ZWSP
##
## Ends in an error in state: 155.
##
## chevrons(nsep_or_term(type_ctor_arg,COMMA)) -> LT . nsep_or_term(type_ctor_arg,COMMA) gt [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LT
##

Ill-formed generic type instantiation.
At this point, a type is expected.

interactive_expr: Bytes As Ident LT Ident XOR
##
## Ends in an error in state: 157.
##
## nsepseq(type_ctor_arg,COMMA) -> type_ctor_arg . [ GT ]
## nsepseq(type_ctor_arg,COMMA) -> type_ctor_arg . COMMA nsepseq(type_ctor_arg,COMMA) [ GT ]
## nseq(__anonymous_0(type_ctor_arg,COMMA)) -> type_ctor_arg . COMMA [ GT ]
## nseq(__anonymous_0(type_ctor_arg,COMMA)) -> type_ctor_arg . COMMA nseq(__anonymous_0(type_ctor_arg,COMMA)) [ GT ]
##
## The known suffix of the stack is as follows:
## type_ctor_arg
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 156, spurious reduction of production type_ctor_arg -> type_expr
##

Ill-formed generic type instantiation.
At this point, one of the following is expected:
  * a comma ',' followed by another type;
  * a closing chevron '>' if no more arguments.

interactive_expr: Bytes As Ident LT Ident COMMA ZWSP
##
## Ends in an error in state: 158.
##
## nsepseq(type_ctor_arg,COMMA) -> type_ctor_arg COMMA . nsepseq(type_ctor_arg,COMMA) [ GT ]
## nseq(__anonymous_0(type_ctor_arg,COMMA)) -> type_ctor_arg COMMA . [ GT ]
## nseq(__anonymous_0(type_ctor_arg,COMMA)) -> type_ctor_arg COMMA . nseq(__anonymous_0(type_ctor_arg,COMMA)) [ GT ]
##
## The known suffix of the stack is as follows:
## type_ctor_arg COMMA
##

Ill-formed generic type.
At his point, one of the following is expected:
  * a type argument as a type;
  * a closing chevron '>' if no more arguments.

interactive_expr: Bytes As LBRACE RBRACE VBAR ZWSP
##
## Ends in an error in state: 181.
##
## nsepseq(core_type,VBAR) -> core_type VBAR . nsepseq(core_type,VBAR) [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## core_type VBAR
##

Ill-formed union type.
At this point, a record type is expected.

interactive_expr: Bytes As UIdent DOT ZWSP
##
## Ends in an error in state: 174.
##
## namespace_path(__anonymous_4) -> namespace_name DOT . namespace_path(__anonymous_4) [ LT ]
## namespace_path(__anonymous_4) -> namespace_name DOT . type_ctor [ LT ]
## namespace_path(__anonymous_5) -> namespace_name DOT . namespace_path(__anonymous_5) [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
## namespace_path(__anonymous_5) -> namespace_name DOT . type_name [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## namespace_name DOT
##

Ill-formed selection of a type in a namespace.
At this point, one of the following is expected:
  * a type name;
  * another namespace name.

interactive_expr: Bytes As LPAR Ident XOR
##
## Ends in an error in state: 202.
##
## par(type_expr) -> LPAR type_expr . RPAR [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
## par(type_expr) -> LPAR type_expr . PARAMS RPAR [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR type_expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
##
interactive_expr: Bytes As LPAR Ident PARAMS ZWSP
##
## Ends in an error in state: 204.
##
## par(type_expr) -> LPAR type_expr PARAMS . RPAR [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR type_expr PARAMS
##

Ill-formed parenthesised type.
At this point, if the type is complete, a closing parenthesis ')' is
expected.

contract: Switch LPAR Bytes RPAR LBRACE Case Bytes ZWSP
##
## Ends in an error in state: 271.
##
## call_expr -> lambda . arguments [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## lambda
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 1124, spurious reduction of production core_expr -> literal_expr
## In state 1126, spurious reduction of production lambda -> core_expr
##

Ill-formed function call.
At this point, the arguments are expected between parentheses.

contract: Bytes LPAR ZWSP
##
## Ends in an error in state: 272.
##
## par(ioption(nsepseq(argument,COMMA))) -> LPAR . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(argument,COMMA))) -> LPAR . nsepseq(argument,COMMA) RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(argument,COMMA))) -> LPAR . PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(argument,COMMA))) -> LPAR . nsepseq(argument,COMMA) PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed function call.
At this point, one of the following is expected:
  * an argument;
  * a closing parenthesis ')' otherwise.

contract: Bytes LPAR PARAMS ZWSP
##
## Ends in an error in state: 274.
##
## par(ioption(nsepseq(argument,COMMA))) -> LPAR PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR PARAMS
##
contract: Bytes LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 464.
##
## par(ioption(nsepseq(argument,COMMA))) -> LPAR nsepseq(argument,COMMA) PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR nsepseq(argument,COMMA) PARAMS
##

Ill-formed function call.
At this point, a closing parenthesis ')' is expected.

interactive_expr: Bytes XOR ZWSP
##
## Ends in an error in state: 326.
##
## bin_op(disj_expr_level,XOR,conj_expr_level) -> disj_expr_level XOR . conj_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level XOR
##
interactive_expr: Bytes BIT_AND ZWSP
##
## Ends in an error in state: 330.
##
## bin_op(conj_expr_level,BIT_AND,bit_shift_level) -> conj_expr_level BIT_AND . bit_shift_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## conj_expr_level BIT_AND
##
interactive_expr: Bytes LT ZWSP
##
## Ends in an error in state: 332.
##
## bin_op(comp_expr_level,LT,add_expr_level) -> comp_expr_level LT . add_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## comp_expr_level LT
##
interactive_expr: Bytes OR ZWSP
##
## Ends in an error in state: 417.
##
## bin_op(disj_expr_level,OR,conj_expr_level) -> disj_expr_level OR . conj_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level OR
##
interactive_expr: Bytes BIT_XOR ZWSP
##
## Ends in an error in state: 419.
##
## bin_op(disj_expr_level,BIT_XOR,conj_expr_level) -> disj_expr_level BIT_XOR . conj_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level BIT_XOR
##
interactive_expr: Bytes PLUS ZWSP
##
## Ends in an error in state: 346.
##
## bin_op(add_expr_level,PLUS,mult_expr_level) -> add_expr_level PLUS . mult_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## add_expr_level PLUS
##
interactive_expr: Bytes SLASH ZWSP
##
## Ends in an error in state: 348.
##
## bin_op(mult_expr_level,SLASH,unary_expr_level) -> mult_expr_level SLASH . unary_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## mult_expr_level SLASH
##
interactive_expr: Bytes REM ZWSP
##
## Ends in an error in state: 350.
##
## bin_op(mult_expr_level,REM,unary_expr_level) -> mult_expr_level REM . unary_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## mult_expr_level REM
##
interactive_expr: Bytes MINUS ZWSP
##
## Ends in an error in state: 352.
##
## bin_op(add_expr_level,MINUS,mult_expr_level) -> add_expr_level MINUS . mult_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## add_expr_level MINUS
##
interactive_expr: Bytes LE ZWSP
##
## Ends in an error in state: 354.
##
## bin_op(comp_expr_level,LE,add_expr_level) -> comp_expr_level LE . add_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## comp_expr_level LE
##
interactive_expr: Bytes GT XOR
##
## Ends in an error in state: 361.
##
## bin_op(comp_expr_level,gt,add_expr_level) -> comp_expr_level gt . add_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
## gt2 -> gt . GT [ WILD Verbatim UIdent True String PLUS2 NOT Match MINUS2 MINUS LPAR LBRACKET Int Ident False ContractOf Bytes BIT_NOT ]
##
## The known suffix of the stack is as follows:
## comp_expr_level gt
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 356, spurious reduction of production gt -> GT
##
interactive_expr: Bytes GT ZWSP EQ ZWSP
##
## Ends in an error in state: 364.
##
## bin_op(comp_expr_level,ge,add_expr_level) -> comp_expr_level ge . add_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## comp_expr_level ge
##
interactive_expr: Bytes GT GT ZWSP
##
## Ends in an error in state: 359.
##
## bin_op(comp_expr_level,gt2,add_expr_level) -> comp_expr_level gt2 . add_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## comp_expr_level gt2
##
interactive_expr: Bytes NE ZWSP
##
## Ends in an error in state: 377.
##
## bin_op(add_expr_level,NE,eq_expr_level) -> add_expr_level NE . eq_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## add_expr_level NE
##
interactive_expr: Bytes EQ2 ZWSP
##
## Ends in an error in state: 379.
##
## bin_op(add_expr_level,EQ2,eq_expr_level) -> add_expr_level EQ2 . eq_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LT LE LBRACE Interface Import If Ident GT For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## add_expr_level EQ2
##
interactive_expr: Bytes BIT_SL ZWSP
##
## Ends in an error in state: 367.
##
## bin_op(bit_shift_level,BIT_SL,comp_expr_level) -> bit_shift_level BIT_SL . comp_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## bit_shift_level BIT_SL
##
interactive_expr: Bytes AND ZWSP
##
## Ends in an error in state: 382.
##
## bin_op(conj_expr_level,AND,bit_shift_level) -> conj_expr_level AND . bit_shift_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## conj_expr_level AND
##
interactive_expr: Bytes VBAR ZWSP
##
## Ends in an error in state: 387.
##
## bin_op(disj_expr_level,VBAR,conj_expr_level) -> disj_expr_level VBAR . conj_expr_level [ XOR While WILD VBAR UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE QMARK PARAMS OR Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level VBAR
##
interactive_expr: Bytes TIMES ZWSP
##
## Ends in an error in state: 300.
##
## bin_op(mult_expr_level,TIMES,unary_expr_level) -> mult_expr_level TIMES . unary_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## mult_expr_level TIMES
##
interactive_expr: MINUS ZWSP
##
## Ends in an error in state: 35.
##
## minus_expr -> MINUS . app_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## MINUS
##
interactive_expr: NOT ZWSP
##
## Ends in an error in state: 28.
##
## not_expr -> NOT . app_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## NOT
##
interactive_expr: BIT_NOT ZWSP
##
## Ends in an error in state: 250.
##
## neg_expr -> BIT_NOT . app_expr_level [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr AND ]
##
## The known suffix of the stack is as follows:
## BIT_NOT
##

Ill-formed expression.
At this point, an expression is expected.

interactive_expr: Bytes As ZWSP
##
## Ends in an error in state: 415.
##
## typed_expr -> app_expr_level As . type_expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## app_expr_level As
##
interactive_expr: LBRACE RBRACE As ZWSP
##
## Ends in an error in state: 281.
##
## typed_object_expr -> untyped_object_expr As . type_expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## untyped_object_expr As
##

Ill-formed typed expression.
At this point, a type is expected.

contract: Bytes LPAR Bytes WILD
##
## Ends in an error in state: 467.
##
## nsepseq(argument,COMMA) -> argument . [ RPAR PARAMS ]
## nsepseq(argument,COMMA) -> argument . COMMA nsepseq(argument,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## argument
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 466, spurious reduction of production argument -> expr
##

Ill-formed function call.
At this point, one of the following is expected:
   * a comma ',' followed by another argument;
   * a closing parenthesis ')' if no more arguments.

contract: Bytes LPAR Bytes COMMA ZWSP
##
## Ends in an error in state: 468.
##
## nsepseq(argument,COMMA) -> argument COMMA . nsepseq(argument,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## argument COMMA
##

Ill-formed function call.
At this point, another argument is expected.

contract: Switch LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 485.
##
## par(switch_subject) -> LPAR switch_subject PARAMS . RPAR [ LBRACE ]
##
## The known suffix of the stack is as follows:
## LPAR switch_subject PARAMS
##

Ill-formed switch.
At this point, a closing parenthesis ')' is expected.

contract: Switch LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 488.
##
## switch_stmt -> Switch par(switch_subject) . braces(cases) [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## Switch par(switch_subject)
##

Ill-formed switch.
At this point, an opening brace '{' is expected, followed by cases.

contract: Switch LPAR Bytes RPAR LBRACE ZWSP
##
## Ends in an error in state: 489.
##
## braces(cases) -> LBRACE . cases RBRACE [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed switch.
At this point, one of the following is expected:
  * the keyword 'case' introducing a new case;
  * the keyword 'default' introducing the default case.

contract: Switch LPAR Bytes RPAR LBRACE Default ZWSP
##
## Ends in an error in state: 490.
##
## switch_default -> Default . COLON [ RBRACE ]
## switch_default -> Default . COLON statements [ RBRACE ]
##
## The known suffix of the stack is as follows:
## Default
##

Ill-formed default switch case
At this point, a colon ':' is expected.

contract: Const Bytes EQ Bytes COMMA ZWSP
##
## Ends in an error in state: 568.
##
## nsepseq(val_binding,COMMA) -> val_binding COMMA . nsepseq(val_binding,COMMA) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## val_binding COMMA
##

Ill-formed value declaration.
At this point, a pattern is expected, e.g. a variable.

contract: Switch LPAR Bytes RPAR LBRACE Default COLON ZWSP
##
## Ends in an error in state: 491.
##
## switch_default -> Default COLON . [ RBRACE ]
## switch_default -> Default COLON . statements [ RBRACE ]
##
## The known suffix of the stack is as follows:
## Default COLON
##

Ill-formed default switch case
At this point, one of the following is expected:
  * a statement;
  * a closing brace '}' if no more cases.

contract: If LPAR Bytes RPAR While LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 645.
##
## while_stmt(before_else) -> While par(while_cond) . before_else [ Else ]
## while_stmt(catenable_stmt) -> While par(while_cond) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(closed_non_if_stmt) -> While par(while_cond) . closed_non_if_stmt [ SEMI_ELSE ]
## while_stmt(statement) -> While par(while_cond) . statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_ending_with_expr) -> While par(while_cond) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While par(while_cond)
##
contract: Return While LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 971.
##
## while_stmt(statement) -> While par(while_cond) . statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While par(while_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> While par(while_cond) . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While par(while_cond)
##
contract: Return If LPAR Bytes RPAR While LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 977.
##
## while_stmt(__anonymous_6) -> While par(while_cond) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(before_else) -> While par(while_cond) . before_else [ Else ]
## while_stmt(closed_non_if_stmt) -> While par(while_cond) . closed_non_if_stmt [ SEMI_ELSE ]
## while_stmt(export(type_decl)) -> While par(while_cond) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While par(while_cond) . statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While par(while_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## While par(while_cond)
##
contract: While LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 1232.
##
## while_stmt(catenable_stmt) -> While par(while_cond) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While par(while_cond) . statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_ending_with_expr) -> While par(while_cond) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While par(while_cond)
##
contract: Return While LPAR Bytes RPAR While LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 973.
##
## while_stmt(__anonymous_6) -> While par(while_cond) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(export(type_decl)) -> While par(while_cond) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(statement) -> While par(while_cond) . statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_not_ending_with_expr) -> While par(while_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## While par(while_cond)
##

Ill-formed while-loop.
At this point, the body is expected as a statement.

interactive_expr: LBRACE ELLIPSIS Bytes COMMA ZWSP
##
## Ends in an error in state: 1149.
##
## update_expr -> ELLIPSIS expr COMMA . updates [ RBRACE ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS expr COMMA
##

Ill-formed record update.
At this point, record assignments are expected.

contract: LBRACKET Bytes COMMA ZWSP
##
## Ends in an error in state: 1175.
##
## nsepseq(element(expr),COMMA) -> element(expr) COMMA . nsepseq(element(expr),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(expr),COMMA)) -> element(expr) COMMA . [ RBRACKET ]
## nseq(__anonymous_0(element(expr),COMMA)) -> element(expr) COMMA . nseq(__anonymous_0(element(expr),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(expr) COMMA
##

Ill-formed array.
At this point, one of the following is expected:
  * another element;
  * a closing bracket ']' if no more elements.

contract: LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 1180.
##
## par(expr) -> LPAR expr PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR expr PARAMS
##

Ill-formed parenthesised expression.
At this point, if the expression is complete, a closing parenthesis
')' is expected.

contract: UIdent DOT UIdent ZWSP
##
## Ends in an error in state: 260.
##
## namespace_path(selected_expr) -> namespace_name . DOT namespace_path(selected_expr) [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## namespace_path(selected_expr) -> namespace_name . DOT selected_expr [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## namespace_name
##

Ill-formed selection in nested namespaces.
At this point, the selection operator '.' is expected.



contract: Namespace UIdent LBRACE For LPAR SEMI SEMI ZWSP
##
## Ends in an error in state: 667.
##
## range_for -> SEMI SEMI . [ RPAR PARAMS ]
## range_for -> SEMI SEMI . afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## SEMI SEMI
##
contract: Namespace UIdent LBRACE For LPAR Ident MINUS2 SEMI SEMI ZWSP
##
## Ends in an error in state: 751.
##
## range_for -> initialiser SEMI SEMI . [ RPAR PARAMS ]
## range_for -> initialiser SEMI SEMI . afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## initialiser SEMI SEMI
##
contract: For LPAR SEMI Bytes SEMI ZWSP
##
## Ends in an error in state: 676.
##
## range_for -> SEMI condition SEMI . [ RPAR PARAMS ]
## range_for -> SEMI condition SEMI . afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## SEMI condition SEMI
##
contract: For LPAR Ident MINUS2 SEMI Bytes SEMI ZWSP
##
## Ends in an error in state: 754.
##
## range_for -> initialiser SEMI condition SEMI . [ RPAR PARAMS ]
## range_for -> initialiser SEMI condition SEMI . afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## initialiser SEMI condition SEMI
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * an afterthought, e.g. incrementing a variable;
  * a closing parenthesis ')' if none.

contract: Namespace UIdent LBRACE For LPAR Let ZWSP
##
## Ends in an error in state: 678.
##
## range_of -> Let . pattern Of expr [ RPAR PARAMS ]
## value_decl -> Let . bindings [ SEMI ]
##
## The known suffix of the stack is as follows:
## Let
##
contract: Namespace UIdent LBRACE For LPAR Const ZWSP
##
## Ends in an error in state: 682.
##
## range_of -> Const . pattern Of expr [ RPAR PARAMS ]
## value_decl -> Const . bindings [ SEMI ]
##
## The known suffix of the stack is as follows:
## Const
##

Ill-formed for-loop.
At this point, a pattern is expected, e.g. a variable.

contract: For LPAR Let WILD ZWSP
##
## Ends in an error in state: 679.
##
## range_of -> Let pattern . Of expr [ RPAR PARAMS ]
## val_binding -> pattern . EQ expr [ SEMI COMMA ]
## val_binding -> pattern . binding_type EQ expr [ SEMI COMMA ]
##
## The known suffix of the stack is as follows:
## Let pattern
##
contract: For LPAR Const UIdent ZWSP
##
## Ends in an error in state: 683.
##
## range_of -> Const pattern . Of expr [ RPAR PARAMS ]
## val_binding -> pattern . EQ expr [ SEMI COMMA ]
## val_binding -> pattern . binding_type EQ expr [ SEMI COMMA ]
##
## The known suffix of the stack is as follows:
## Const pattern
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 521, spurious reduction of production ctor_app_pattern -> ctor
## In state 520, spurious reduction of production pattern -> ctor_app_pattern
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * the keyword 'of' if defining a for-of loop;
  * the assignment operator '=' to define the initialiser;
  * a colon ':' followed by the type of the initialiser.

contract: For LPAR Let WILD Of ZWSP
##
## Ends in an error in state: 680.
##
## range_of -> Let pattern Of . expr [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## Let pattern Of
##
contract: For LPAR Const WILD Of ZWSP
##
## Ends in an error in state: 684.
##
## range_of -> Const pattern Of . expr [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## Const pattern Of
##

Ill-formed for-loop.
At this point, the range is expected as an expression.

contract: Namespace UIdent LBRACE For LPAR SEMI SEMI PARAMS ZWSP
##
## Ends in an error in state: 742.
##
## par(range_for) -> LPAR range_for PARAMS . RPAR [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR range_for PARAMS
##

Ill-formed for-loop.
At this point, a closing parenthesis ')' is expected.

contract: Namespace UIdent LBRACE For LPAR Ident MINUS2 BIT_AND
##
## Ends in an error in state: 749.
##
## range_for -> initialiser . SEMI SEMI [ RPAR PARAMS ]
## range_for -> initialiser . SEMI SEMI afterthought [ RPAR PARAMS ]
## range_for -> initialiser . SEMI condition SEMI [ RPAR PARAMS ]
## range_for -> initialiser . SEMI condition SEMI afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## initialiser
##

Ill-formed for-loop.
At this point, a semicolon ';' is expected.

contract: Namespace UIdent LBRACE For LPAR Ident MINUS2 SEMI ZWSP
##
## Ends in an error in state: 750.
##
## range_for -> initialiser SEMI . SEMI [ RPAR PARAMS ]
## range_for -> initialiser SEMI . SEMI afterthought [ RPAR PARAMS ]
## range_for -> initialiser SEMI . condition SEMI [ RPAR PARAMS ]
## range_for -> initialiser SEMI . condition SEMI afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## initialiser SEMI
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * a semicolon ';',
  * the invariant as a boolean expression.

contract: Const ZWSP
##
## Ends in an error in state: 851.
##
## value_decl -> Const . bindings [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Const
##

Ill-formed value declaration.
At this point, a pattern is expected, e.g. a variable.

contract: Namespace UIdent LBRACE For ZWSP
##
## Ends in an error in state: 955.
##
## empty_for_stmt -> For . par(range_for) [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(catenable_stmt) -> For . par(range_of) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For . par(range_of) statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_ending_with_expr) -> For . par(range_of) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## full_for_stmt(catenable_stmt) -> For . par(range_for) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(statement) -> For . par(range_for) statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_ending_with_expr) -> For . par(range_for) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For
##
contract: If LPAR Bytes RPAR For ZWSP
##
## Ends in an error in state: 664.
##
## empty_for_stmt -> For . par(range_for) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## for_of_stmt(before_else) -> For . par(range_of) before_else [ Else ]
## for_of_stmt(catenable_stmt) -> For . par(range_of) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(closed_non_if_stmt) -> For . par(range_of) closed_non_if_stmt [ SEMI_ELSE ]
## for_of_stmt(statement) -> For . par(range_of) statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_ending_with_expr) -> For . par(range_of) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## full_for_stmt(before_else) -> For . par(range_for) before_else [ Else ]
## full_for_stmt(catenable_stmt) -> For . par(range_for) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(closed_non_if_stmt) -> For . par(range_for) closed_non_if_stmt [ SEMI_ELSE ]
## full_for_stmt(statement) -> For . par(range_for) statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_ending_with_expr) -> For . par(range_for) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For
##
contract: Return If LPAR Bytes RPAR For ZWSP
##
## Ends in an error in state: 980.
##
## empty_for_stmt -> For . par(range_for) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## for_of_stmt(__anonymous_6) -> For . par(range_of) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(before_else) -> For . par(range_of) before_else [ Else ]
## for_of_stmt(closed_non_if_stmt) -> For . par(range_of) closed_non_if_stmt [ SEMI_ELSE ]
## for_of_stmt(export(type_decl)) -> For . par(range_of) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For . par(range_of) statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For . par(range_of) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(__anonymous_6) -> For . par(range_for) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(before_else) -> For . par(range_for) before_else [ Else ]
## full_for_stmt(closed_non_if_stmt) -> For . par(range_for) closed_non_if_stmt [ SEMI_ELSE ]
## full_for_stmt(export(type_decl)) -> For . par(range_for) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(statement) -> For . par(range_for) statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_not_ending_with_expr) -> For . par(range_for) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## For
##
contract: Return While LPAR Bytes RPAR For ZWSP
##
## Ends in an error in state: 1031.
##
## empty_for_stmt -> For . par(range_for) [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(__anonymous_6) -> For . par(range_of) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(export(type_decl)) -> For . par(range_of) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For . par(range_of) statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For . par(range_of) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(__anonymous_6) -> For . par(range_for) type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(export(type_decl)) -> For . par(range_for) export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(statement) -> For . par(range_for) statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_not_ending_with_expr) -> For . par(range_for) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## For
##
contract: Return For ZWSP
##
## Ends in an error in state: 1056.
##
## for_of_stmt(statement) -> For . par(range_of) statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For . par(range_of) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> For . par(range_of) stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## full_for_stmt(statement) -> For . par(range_for) statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_not_ending_with_expr) -> For . par(range_for) stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> For . par(range_for) stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For
##

Ill-formed for-loop.
At this point, an opening parenthesis '(' is expected.

contract: Namespace UIdent LBRACE Return Export ZWSP
##
## Ends in an error in state: 1061.
##
## export(import_decl) -> Export . import_decl [ While Type Switch SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
## export(interface_decl) -> Export . interface_decl [ While WILD Verbatim UIdent Type True Switch String SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## export(namespace_decl) -> Export . namespace_decl [ While WILD Verbatim UIdent Type True Switch String SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## export(type_decl) -> Export . type_decl [ While Type Switch SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
## export_fun_decl -> Export . fun_decl [ While WILD Verbatim UIdent Type True Switch String SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## export_value_decl -> Export . value_decl [ While Type Switch SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Export
##
contract: Return If LPAR Bytes RPAR Export ZWSP
##
## Ends in an error in state: 850.
##
## export(import_decl) -> Export . import_decl [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## export(interface_decl) -> Export . interface_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export(namespace_decl) -> Export . namespace_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export(non_fun_non_value_decl) -> Export . non_fun_non_value_decl [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## export(type_decl) -> Export . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export_fun_decl -> Export . fun_decl [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## export_value_decl -> Export . value_decl [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case Break ]
##
## The known suffix of the stack is as follows:
## Export
##
contract: Return If LPAR Bytes RPAR If LPAR Bytes RPAR Export ZWSP
##
## Ends in an error in state: 982.
##
## export(interface_decl) -> Export . interface_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export(namespace_decl) -> Export . namespace_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export(non_fun_non_value_decl) -> Export . non_fun_non_value_decl [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## export(type_decl) -> Export . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## export_fun_decl -> Export . fun_decl [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
## export_value_decl -> Export . value_decl [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## Export
##

Ill-formed export declaration.
At this point, a declaration is expected.

contract: Namespace UIdent LBRACE Return For LPAR SEMI SEMI RPAR ZWSP
##
## Ends in an error in state: 1059.
##
## full_for_stmt(statement) -> For par(range_for) . statement [ SEMI RBRACE EOF Default Case ]
## full_for_stmt(stmt_not_ending_with_expr) -> For par(range_for) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## full_for_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> For par(range_for) . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For par(range_for)
##
contract: Return While LPAR Bytes RPAR For LPAR Const UIdent Of Bytes RPAR ZWSP
##
## Ends in an error in state: 1032.
##
## for_of_stmt(__anonymous_6) -> For par(range_of) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(export(type_decl)) -> For par(range_of) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For par(range_of) . statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For par(range_of) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## For par(range_of)
##

Ill-formed for-loop.
At this point, the body is expected as a statement.

contract: Namespace UIdent LBRACE Return BIT_AND
##
## Ends in an error in state: 1139.
##
## braces(statements) -> LBRACE statements . RBRACE [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Else EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## LBRACE statements
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 492, spurious reduction of production empty_return_stmt -> Return
## In state 1082, spurious reduction of production return_stmt -> empty_return_stmt
## In state 958, spurious reduction of production non_if_stmt(statement) -> return_stmt
## In state 876, spurious reduction of production statement -> non_if_stmt(statement)
## In state 1076, spurious reduction of production last_or_more(statement) -> statement
## In state 1081, spurious reduction of production statements -> last_or_more(statement)
##

Ill-formed block of statements.
At this point, if the statement is complete, one of the following is
expected:
  * a semicolon ';' followed by another statement;
  * a closing brace '}' if no more statements.

interactive_expr: ZWSP
##
## Ends in an error in state: 1236.
##
## interactive_expr' -> . interactive_expr [ # ]
##
## The known suffix of the stack is as follows:
##
##

Ill-formed expression.
At this point, an expression is expected.

contract: Const Bytes COLON Ident EQ ZWSP
##
## Ends in an error in state: 573.
##
## val_binding -> pattern binding_type EQ . expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## pattern binding_type EQ
##

Ill-formed value declaration.
At this point, the right-hand side is expected as an expression.

interactive_expr: UIdent WILD
##
## Ends in an error in state: 306.
##
## ctor_app_expr -> ctor . ctor_app_expr_args [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## ctor
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 22, spurious reduction of production ctor -> UIdent
##

Ill-formed constructor application.
At this point, an opening parenthesis '(' is expected.



interactive_expr: Bytes As VBAR ZWSP
##
## Ends in an error in state: 101.
##
## nseq(__anonymous_3) -> VBAR . core_type [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
## nseq(__anonymous_3) -> VBAR . core_type nseq(__anonymous_3) [ While WILD Verbatim UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ]
##
## The known suffix of the stack is as follows:
## VBAR
##

Ill-formed variant or union type.
At this point, one of the following is expected:
  * a record type if defining a union type;
  * a variant, otherwise.

interactive_expr: Bytes As LBRACKET Ident COMMA Ident XOR
##
## Ends in an error in state: 195.
##
## nsepseq(type_element,COMMA) -> type_element . [ RBRACKET ]
## nsepseq(type_element,COMMA) -> type_element . COMMA nsepseq(type_element,COMMA) [ RBRACKET ]
## nseq(__anonymous_0(type_element,COMMA)) -> type_element . COMMA [ RBRACKET ]
## nseq(__anonymous_0(type_element,COMMA)) -> type_element . COMMA nseq(__anonymous_0(type_element,COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## type_element
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 192, spurious reduction of production type_element -> type_expr
##

Ill-formed array type.
At this point, one of the following is expected:
  * a comma ',' followed by a type;
  * a closing bracket ']' if no more elements.

interactive_expr: Bytes As LBRACKET Ident COMMA Ident COMMA ZWSP
##
## Ends in an error in state: 196.
##
## nsepseq(type_element,COMMA) -> type_element COMMA . nsepseq(type_element,COMMA) [ RBRACKET ]
## nseq(__anonymous_0(type_element,COMMA)) -> type_element COMMA . [ RBRACKET ]
## nseq(__anonymous_0(type_element,COMMA)) -> type_element COMMA . nseq(__anonymous_0(type_element,COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## type_element COMMA
##

Ill-formed array type.
At this point, one of the following is expected:
  * a type for an element;
  * a closing bracket ']' if no more elements.

contract: Switch LPAR Bytes WILD
##
## Ends in an error in state: 483.
##
## par(switch_subject) -> LPAR switch_subject . RPAR [ LBRACE ]
## par(switch_subject) -> LPAR switch_subject . PARAMS RPAR [ LBRACE ]
##
## The known suffix of the stack is as follows:
## LPAR switch_subject
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 487, spurious reduction of production switch_subject -> expr
##

Ill-formed switch.
At this point, if the expression is complete, a closing parenthesis
')' is expected.

contract: If LPAR Bytes WILD
##
## Ends in an error in state: 638.
##
## par(if_cond) -> LPAR if_cond . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(if_cond) -> LPAR if_cond . PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR if_cond
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 642, spurious reduction of production if_cond -> expr
##
contract: If LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 640.
##
## par(if_cond) -> LPAR if_cond PARAMS . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR if_cond PARAMS
##

Ill-formed conditional statement.
At this point, a closing parenthesis ')' is expected.

contract: If LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 643.
##
## if_else_stmt(catenable_stmt) -> If par(if_cond) . before_else Else catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(catenable_stmt) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) . before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) . before_else Else stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(catenable_stmt) -> If par(if_cond) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If par(if_cond) . statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_ending_with_expr) -> If par(if_cond) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond)
##
contract: If LPAR Bytes RPAR If LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 647.
##
## if_else_stmt(before_else) -> If par(if_cond) . before_else Else before_else [ Else ]
## if_else_stmt(before_else) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE before_else [ Else ]
## if_else_stmt(catenable_stmt) -> If par(if_cond) . before_else Else catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(catenable_stmt) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) . before_else Else closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(statement) -> If par(if_cond) . before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) . before_else Else stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(catenable_stmt) -> If par(if_cond) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If par(if_cond) . statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_ending_with_expr) -> If par(if_cond) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond)
##
contract: Return If LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 1048.
##
## if_else_stmt(statement) -> If par(if_cond) . before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If par(if_cond) . before_else Else stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
## if_stmt(statement) -> If par(if_cond) . statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If par(if_cond) . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond)
##
contract: Return If LPAR Bytes RPAR If LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 979.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) . before_else Else type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(__anonymous_6) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(before_else) -> If par(if_cond) . before_else Else before_else [ Else ]
## if_else_stmt(before_else) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE before_else [ Else ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) . before_else Else closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) . before_else Else export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) . before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(__anonymous_6) -> If par(if_cond) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(export(type_decl)) -> If par(if_cond) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If par(if_cond) . statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond)
##
contract: Return While LPAR Bytes RPAR If LPAR Bytes RPAR ZWSP
##
## Ends in an error in state: 975.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) . before_else Else type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(__anonymous_6) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) . before_else Else export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) . before_else Else statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(statement) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . before_else Else stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . closed_non_if_stmt SEMI_ELSE stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(__anonymous_6) -> If par(if_cond) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(export(type_decl)) -> If par(if_cond) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_stmt(statement) -> If par(if_cond) . statement [ SEMI RBRACE EOF Default Case ]
## if_stmt(stmt_not_ending_with_expr) -> If par(if_cond) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond)
##

Ill-formed conditional statement.
At this point, the statement for a true condition is expected.

contract: If LPAR Bytes RPAR While ZWSP
##
## Ends in an error in state: 644.
##
## while_stmt(before_else) -> While . par(while_cond) before_else [ Else ]
## while_stmt(catenable_stmt) -> While . par(while_cond) catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## while_stmt(closed_non_if_stmt) -> While . par(while_cond) closed_non_if_stmt [ SEMI_ELSE ]
## while_stmt(statement) -> While . par(while_cond) statement [ SEMI RBRACE EOF Default Case ]
## while_stmt(stmt_ending_with_expr) -> While . par(while_cond) stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## While
##

Ill-formed while-loop.
At this point, the invariant is expected between parentheses.

contract: For LPAR SEMI SEMI Bytes WILD
##
## Ends in an error in state: 671.
##
## nsepseq(after(expr),COMMA) -> after(expr) . [ RPAR PARAMS ]
## nsepseq(after(expr),COMMA) -> after(expr) . COMMA nsepseq(after(expr),COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## after(expr)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 669, spurious reduction of production after(expr) -> expr
##

Ill-formed for-loop.
At this point, one of the following is expected:
  * a comma ',' followed by another afterthought expression;
  * a closing parenthesis ')' otherwise.

contract: For LPAR SEMI SEMI Bytes COMMA ZWSP
##
## Ends in an error in state: 672.
##
## nsepseq(after(expr),COMMA) -> after(expr) COMMA . nsepseq(after(expr),COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## after(expr) COMMA
##

Ill-formed for-loop.
At this point, an expression is expected.

contract: For LPAR SEMI Bytes WILD
##
## Ends in an error in state: 675.
##
## range_for -> SEMI condition . SEMI [ RPAR PARAMS ]
## range_for -> SEMI condition . SEMI afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## SEMI condition
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 674, spurious reduction of production condition -> expr
##
contract: For LPAR Ident MINUS2 SEMI Bytes WILD
##
## Ends in an error in state: 753.
##
## range_for -> initialiser SEMI condition . SEMI [ RPAR PARAMS ]
## range_for -> initialiser SEMI condition . SEMI afterthought [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## initialiser SEMI condition
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 674, spurious reduction of production condition -> expr
##

Ill-formed for-loop.
At this point, a semicolon ';' is expected.

contract: For LPAR Const Ident Of Bytes PARAMS ZWSP
##
## Ends in an error in state: 738.
##
## par(range_of) -> LPAR range_of PARAMS . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR range_of PARAMS
##

Ill-formed for-loop.
At this point, a closing parenthesis ')' is expected.

interactive_expr: Bytes QMARK ZWSP
##
## Ends in an error in state: 389.
##
## ternary_expr(disj_expr_level,expr) -> disj_expr_level QMARK . expr COLON expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level QMARK
##
contract: For LPAR Const Ident Of Bytes WILD
##
## Ends in an error in state: 736.
##
## par(range_of) -> LPAR range_of . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(range_of) -> LPAR range_of . PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR range_of
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 685, spurious reduction of production range_of -> Const pattern Of expr
##

Ill-formed for-loop.
At this point, if the range expression is complete, a closing
parenthesis ')' is expected.

interactive_expr: Bytes QMARK Bytes WILD
##
## Ends in an error in state: 390.
##
## ternary_expr(disj_expr_level,expr) -> disj_expr_level QMARK expr . COLON expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level QMARK expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
##

Ill-formed ternary conditional expression.
At this point, if the expression for the true condition is complete, a
colon ':' is expected, followed by the expression for the false
condition.

contract: If LPAR Bytes RPAR For LPAR Const Ident Of Bytes RPAR ZWSP
##
## Ends in an error in state: 849.
##
## for_of_stmt(before_else) -> For par(range_of) . before_else [ Else ]
## for_of_stmt(catenable_stmt) -> For par(range_of) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(closed_non_if_stmt) -> For par(range_of) . closed_non_if_stmt [ SEMI_ELSE ]
## for_of_stmt(statement) -> For par(range_of) . statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_ending_with_expr) -> For par(range_of) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For par(range_of)
##
contract: For LPAR Const Ident Of Bytes RPAR ZWSP
##
## Ends in an error in state: 956.
##
## for_of_stmt(catenable_stmt) -> For par(range_of) . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For par(range_of) . statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_ending_with_expr) -> For par(range_of) . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For par(range_of)
##
contract: Return If LPAR Bytes RPAR For LPAR Const Ident Of Bytes RPAR ZWSP
##
## Ends in an error in state: 981.
##
## for_of_stmt(__anonymous_6) -> For par(range_of) . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(before_else) -> For par(range_of) . before_else [ Else ]
## for_of_stmt(closed_non_if_stmt) -> For par(range_of) . closed_non_if_stmt [ SEMI_ELSE ]
## for_of_stmt(export(type_decl)) -> For par(range_of) . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(statement) -> For par(range_of) . statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For par(range_of) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## For par(range_of)
##
contract: Return For LPAR Const Ident Of Bytes RPAR ZWSP
##
## Ends in an error in state: 1057.
##
## for_of_stmt(statement) -> For par(range_of) . statement [ SEMI RBRACE EOF Default Case ]
## for_of_stmt(stmt_not_ending_with_expr) -> For par(range_of) . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## for_of_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> For par(range_of) . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## For par(range_of)
##

Ill-formed for-loop.
At this point, the body is expected as a statement.

contract: If LPAR Bytes RPAR If LPAR Bytes RPAR Break SEMI_ELSE ZWSP
##
## Ends in an error in state: 934.
##
## if_else_stmt(before_else) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . before_else [ Else ]
## if_else_stmt(catenable_stmt) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(statement) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) closed_non_if_stmt SEMI_ELSE
##
contract: If LPAR Bytes RPAR Break SEMI_ELSE ZWSP
##
## Ends in an error in state: 954.
##
## if_else_stmt(catenable_stmt) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) closed_non_if_stmt SEMI_ELSE
##
contract: Return If LPAR Bytes RPAR If LPAR Bytes RPAR Return SEMI_ELSE ZWSP
##
## Ends in an error in state: 1017.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(before_else) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . before_else [ Else ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) closed_non_if_stmt SEMI_ELSE
##
contract: Return If LPAR Bytes RPAR Return SEMI_ELSE ZWSP
##
## Ends in an error in state: 1051.
##
## if_else_stmt(statement) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) closed_non_if_stmt SEMI_ELSE
##
contract: Return While LPAR Bytes RPAR If LPAR Bytes RPAR Break SEMI_ELSE ZWSP
##
## Ends in an error in state: 1030.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) closed_non_if_stmt SEMI_ELSE . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) closed_non_if_stmt SEMI_ELSE
##
contract: If LPAR Bytes RPAR If LPAR Bytes RPAR LBRACE Directive RBRACE Else ZWSP
##
## Ends in an error in state: 942.
##
## if_else_stmt(before_else) -> If par(if_cond) before_else Else . before_else [ Else ]
## if_else_stmt(catenable_stmt) -> If par(if_cond) before_else Else . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) before_else Else . closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(statement) -> If par(if_cond) before_else Else . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) before_else Else . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) before_else Else
##
contract: If LPAR Bytes RPAR LBRACE Directive RBRACE Else ZWSP
##
## Ends in an error in state: 968.
##
## if_else_stmt(catenable_stmt) -> If par(if_cond) before_else Else . catenable_stmt [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) before_else Else . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_ending_with_expr) -> If par(if_cond) before_else Else . stmt_ending_with_expr [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) before_else Else
##
contract: Return If LPAR Bytes RPAR If LPAR Bytes RPAR LBRACE Directive RBRACE Else ZWSP
##
## Ends in an error in state: 1022.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) before_else Else . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(before_else) -> If par(if_cond) before_else Else . before_else [ Else ]
## if_else_stmt(closed_non_if_stmt) -> If par(if_cond) before_else Else . closed_non_if_stmt [ SEMI_ELSE ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) before_else Else . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) before_else Else . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) before_else Else . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) before_else Else
##
contract: Return If LPAR Bytes RPAR LBRACE Directive RBRACE Else ZWSP
##
## Ends in an error in state: 1054.
##
## if_else_stmt(statement) -> If par(if_cond) before_else Else . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) before_else Else . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(stmt_not_starting_with_expr_nor_block1_bis) -> If par(if_cond) before_else Else . stmt_not_starting_with_expr_nor_block1_bis [ While Type Switch Return Namespace Let LBRACE Interface Import If For Export Directive Continue Const Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) before_else Else
##
contract: Return While LPAR Bytes RPAR If LPAR Bytes RPAR LBRACE Directive RBRACE Else ZWSP
##
## Ends in an error in state: 1037.
##
## if_else_stmt(__anonymous_6) -> If par(if_cond) before_else Else . type_decl [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(export(type_decl)) -> If par(if_cond) before_else Else . export(type_decl) [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## if_else_stmt(statement) -> If par(if_cond) before_else Else . statement [ SEMI RBRACE EOF Default Case ]
## if_else_stmt(stmt_not_ending_with_expr) -> If par(if_cond) before_else Else . stmt_not_ending_with_expr [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## If par(if_cond) before_else Else
##

Ill-formed conditional statement.
At this point, the statement for a false condition is expected.

contract: Switch LPAR Bytes RPAR LBRACE Case ZWSP
##
## Ends in an error in state: 1122.
##
## switch_case -> Case . case_expr COLON [ RBRACE Default Case ]
## switch_case -> Case . case_expr COLON statements [ RBRACE Default Case ]
##
## The known suffix of the stack is as follows:
## Case
##

Ill-formed switch.
At this point, a case expression is expected.

contract: Switch LPAR Bytes RPAR LBRACE Case Bytes COLON ZWSP
##
## Ends in an error in state: 1128.
##
## switch_case -> Case case_expr COLON . [ RBRACE Default Case ]
## switch_case -> Case case_expr COLON . statements [ RBRACE Default Case ]
##
## The known suffix of the stack is as follows:
## Case case_expr COLON
##

Ill-formed switch.
At this point, one of the following is expected:
  * the keyword 'case' to start a new case;
  * the keyword 'default' to start the default case;
  * a statement for the current case;
  * a closing brace '}' if the case is empty.

contract: Switch LPAR Bytes RPAR LBRACE Case UIdent LPAR RPAR ZWSP
##
## Ends in an error in state: 1127.
##
## switch_case -> Case case_expr . COLON [ RBRACE Default Case ]
## switch_case -> Case case_expr . COLON statements [ RBRACE Default Case ]
##
## The known suffix of the stack is as follows:
## Case case_expr
##

Ill-formed switch.
At this point, a colon ':' is expected.

contract: Switch LPAR Bytes RPAR LBRACE Case Bytes COLON Return BIT_AND
##
## Ends in an error in state: 1132.
##
## nseq(switch_case) -> switch_case . [ RBRACE Default ]
## nseq(switch_case) -> switch_case . nseq(switch_case) [ RBRACE Default ]
##
## The known suffix of the stack is as follows:
## switch_case
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 492, spurious reduction of production empty_return_stmt -> Return
## In state 1082, spurious reduction of production return_stmt -> empty_return_stmt
## In state 958, spurious reduction of production non_if_stmt(statement) -> return_stmt
## In state 876, spurious reduction of production statement -> non_if_stmt(statement)
## In state 1076, spurious reduction of production last_or_more(statement) -> statement
## In state 1081, spurious reduction of production statements -> last_or_more(statement)
## In state 1129, spurious reduction of production switch_case -> Case case_expr COLON statements
##

Ill-formed switch.
At this point, one of the following is expected:
  * the keyword 'case' to start a new case;
  * the keyword 'default' to start the default case;
  * a closing brace '}' if no more cases.

contract: Switch LPAR Bytes RPAR LBRACE Default COLON Return BIT_AND
##
## Ends in an error in state: 1136.
##
## braces(cases) -> LBRACE cases . RBRACE [ While WILD Verbatim UIdent Type True Switch String SEMI_ELSE SEMI Return RBRACE PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export EOF Directive Default ContractOf Continue Const Class Case Bytes Break ]
##
## The known suffix of the stack is as follows:
## LBRACE cases
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 492, spurious reduction of production empty_return_stmt -> Return
## In state 1082, spurious reduction of production return_stmt -> empty_return_stmt
## In state 958, spurious reduction of production non_if_stmt(statement) -> return_stmt
## In state 876, spurious reduction of production statement -> non_if_stmt(statement)
## In state 1076, spurious reduction of production last_or_more(statement) -> statement
## In state 1081, spurious reduction of production statements -> last_or_more(statement)
## In state 1121, spurious reduction of production switch_default -> Default COLON statements
## In state 1131, spurious reduction of production cases -> switch_default
##

Ill-formed switch.
At this point, if the case is complete, one of the following is
expected:
  * another case (starting by 'case' or 'default');
  * a closing brace '}' is no more cases.

interactive_expr: LBRACE ELLIPSIS Bytes WILD
##
## Ends in an error in state: 1148.
##
## update_expr -> ELLIPSIS expr . COMMA updates [ RBRACE ]
##
## The known suffix of the stack is as follows:
## ELLIPSIS expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
##

Ill-formed record update.
At this point, if the record to update is complete, a comma ',' is
expected.

interactive_expr: LBRACE Ident COLON Bytes WILD
##
## Ends in an error in state: 1155.
##
## nsepseq(property(expr),COMMA) -> property(expr) . [ RBRACE ]
## nsepseq(property(expr),COMMA) -> property(expr) . COMMA nsepseq(property(expr),COMMA) [ RBRACE ]
## nseq(__anonymous_0(property(expr),COMMA)) -> property(expr) . COMMA [ RBRACE ]
## nseq(__anonymous_0(property(expr),COMMA)) -> property(expr) . COMMA nseq(__anonymous_0(property(expr),COMMA)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property(expr)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 1154, spurious reduction of production property(expr) -> property_id COLON expr
##

Ill-formed record.
At this point, one of the following is expected:
  * a comma ',';
  * a closing brace '}' if no more fields.

contract: LBRACKET Bytes WILD
##
## Ends in an error in state: 1174.
##
## nsepseq(element(expr),COMMA) -> element(expr) . [ RBRACKET ]
## nsepseq(element(expr),COMMA) -> element(expr) . COMMA nsepseq(element(expr),COMMA) [ RBRACKET ]
## nseq(__anonymous_0(element(expr),COMMA)) -> element(expr) . COMMA [ RBRACKET ]
## nseq(__anonymous_0(element(expr),COMMA)) -> element(expr) . COMMA nseq(__anonymous_0(element(expr),COMMA)) [ RBRACKET ]
##
## The known suffix of the stack is as follows:
## element(expr)
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 1173, spurious reduction of production element(expr) -> expr
##

Ill-formed array.
At this point, one of the following is expected:
  * a comma ',' followed by another element;
  * a closing bracket ']' otherwise.

contract: LPAR Bytes WILD
##
## Ends in an error in state: 1178.
##
## par(expr) -> LPAR expr . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(expr) -> LPAR expr . PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACKET LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default DOT Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
##

Ill-formed parenthesised expression.
At this point, if the expression is complete, a closing parenthesis
')' is expected.

contract: While LPAR Bytes WILD
##
## Ends in an error in state: 1227.
##
## par(while_cond) -> LPAR while_cond . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
## par(while_cond) -> LPAR while_cond . PARAMS RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR while_cond
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 1231, spurious reduction of production while_cond -> expr
##
contract: While LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 1229.
##
## par(while_cond) -> LPAR while_cond PARAMS . RPAR [ While WILD Verbatim UIdent Type True Switch String Return PLUS2 Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident Function For False Export Directive ContractOf Continue Const Class Bytes Break ]
##
## The known suffix of the stack is as follows:
## LPAR while_cond PARAMS
##

Ill-formed while-loop.
At this point, if the condition is complete, a closing parenthesis ')'
is expected.

contract: Const Bytes EQ ZWSP
##
## Ends in an error in state: 570.
##
## val_binding -> pattern EQ . expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## pattern EQ
##
contract: Const Default EQ ZWSP
##
## Ends in an error in state: 556.
##
## val_binding -> Default EQ . expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## Default EQ
##
contract: Const Default COLON Ident EQ ZWSP
##
## Ends in an error in state: 565.
##
## val_binding -> Default binding_type EQ . expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COMMA Break ]
##
## The known suffix of the stack is as follows:
## Default binding_type EQ
##

Ill-formed value declaration.
At this point, the right-hand side is expected as an expression.

contract: Const UIdent LPAR ZWSP
##
## Ends in an error in state: 522.
##
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR . RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR . nsepseq(pattern,COMMA) RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR . PARAMS RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR . nsepseq(pattern,COMMA) PARAMS RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed pattern of constructor application.
At this point, one of the following is expected:
  * a pattern matching an argument;
  * a closing parenthesis ')' if the constructor is constant.

contract: Const UIdent LPAR Bytes ZWSP
##
## Ends in an error in state: 526.
##
## nsepseq(pattern,COMMA) -> pattern . [ RPAR PARAMS ]
## nsepseq(pattern,COMMA) -> pattern . COMMA nsepseq(pattern,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## pattern
##

Ill-formed pattern of constructor application.
At this point, one of the following is expected:
  * a comma ',' followed by a pattern matching an argument;
  * a closing parenthesis ')' if the constructor is constant.

contract: Const UIdent LPAR Bytes COMMA ZWSP
##
## Ends in an error in state: 527.
##
## nsepseq(pattern,COMMA) -> pattern COMMA . nsepseq(pattern,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## pattern COMMA
##

Ill-formed pattern of constructor application.
At this point, a pattern matching an argument is expected.

contract: Const UIdent LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 534.
##
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR nsepseq(pattern,COMMA) PARAMS . RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LPAR nsepseq(pattern,COMMA) PARAMS
##
contract: Const UIdent LPAR PARAMS ZWSP
##
## Ends in an error in state: 524.
##
## par(ioption(nsepseq(pattern,COMMA))) -> LPAR PARAMS . RPAR [ RPAR RBRACKET RBRACE PARAMS Of EQ COMMA COLON ]
##
## The known suffix of the stack is as follows:
## LPAR PARAMS
##

Ill-formed pattern of constructor application.
At this point, a closing parenthesis ')' is expected.

interactive_expr: Bytes As LBRACKET ZWSP
##
## Ends in an error in state: 116.
##
## brackets(type_elements) -> LBRACKET . type_elements RBRACKET [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LBRACKET
##

Ill-formed variant type or array type.
At this point, one of the following is expected:
  * a string denoting a constructor;
  * a type denoting an element of an array type.

contract: UIdent LPAR ZWSP
##
## Ends in an error in state: 307.
##
## par(ioption(nsepseq(expr,COMMA))) -> LPAR . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(expr,COMMA))) -> LPAR . nsepseq(expr,COMMA) RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(expr,COMMA))) -> LPAR . PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(ioption(nsepseq(expr,COMMA))) -> LPAR . nsepseq(expr,COMMA) PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed constructor application.
At this point, one of the following is expected:
  * an argument;
  * a closing parenthesis ')' otherwise.

contract: UIdent LPAR PARAMS ZWSP
##
## Ends in an error in state: 309.
##
## par(ioption(nsepseq(expr,COMMA))) -> LPAR PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR PARAMS
##
contract: UIdent LPAR Bytes PARAMS ZWSP
##
## Ends in an error in state: 316.
##
## par(ioption(nsepseq(expr,COMMA))) -> LPAR nsepseq(expr,COMMA) PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR nsepseq(expr,COMMA) PARAMS
##

Ill-formed constructor application.
At this point, a closing parenthesis ')' is expected.

contract: UIdent LPAR Bytes While
##
## Ends in an error in state: 441.
##
## nsepseq(expr,COMMA) -> expr . [ RPAR PARAMS ]
## nsepseq(expr,COMMA) -> expr . COMMA nsepseq(expr,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
##

Ill-formed constructor application.
At this point, if the argument is complete, one of the following is
expected:
  * a comma ',' followed by another argument;
  * a closing parenthesis ')' otherwise.

contract: UIdent LPAR Bytes COMMA ZWSP
##
## Ends in an error in state: 442.
##
## nsepseq(expr,COMMA) -> expr COMMA . nsepseq(expr,COMMA) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## expr COMMA
##

Ill-formed constructor application.
At this point, an argument is expected.


contract: Interface UIdent Extends UIdent COMMA ZWSP
##
## Ends in an error in state: 602.
##
## nsepseq(interface_expr,COMMA) -> interface_expr COMMA . nsepseq(interface_expr,COMMA) [ LBRACE ]
##
## The known suffix of the stack is as follows:
## interface_expr COMMA
##

Ill-formed interface declaration.
At this point, an interface expression is expected.

contract: Interface UIdent Extends ZWSP
##
## Ends in an error in state: 598.
##
## extends -> Extends . nsepseq(interface_expr,COMMA) [ LBRACE ]
##
## The known suffix of the stack is as follows:
## Extends
##

Ill-formed interface declaration.
At this point, an interface is expected.

interactive_expr: Bytes QMARK Bytes COLON ZWSP
##
## Ends in an error in state: 391.
##
## ternary_expr(disj_expr_level,expr) -> disj_expr_level QMARK expr COLON . expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## disj_expr_level QMARK expr COLON
##

Ill-formed ternary conditional expression.
At this point, the expression for a false condition is expected.

contract: Bytes ZWSP
##
## Ends in an error in state: 771.
##
## typed_expr -> app_expr_level . As type_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## app_expr_level
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
##

Ill-formed typed expression.
At this point, if the expression is complete, the keyword 'as' is
expected, followed by a type.

contract: Return If LPAR Bytes RPAR Directive BIT_AND
##
## Ends in an error in state: 1085.
##
## stmts_not_starting_with_expr_nor_block -> stmt_not_starting_with_expr_nor_block1 . stmts_not_starting_with_expr [ RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## stmt_not_starting_with_expr_nor_block1
##

Ill-formed statement.
At this point, a statement other than an expresswion is expected.

interactive_type_expr: ZWSP
##
## Ends in an error in state: 1240.
##
## interactive_type_expr' -> . interactive_type_expr [ # ]
##
## The known suffix of the stack is as follows:
##
##

Ill-formed type expression.
At this point, a type expression is expected.

interactive_type_expr: UIdent ARROW
##
## Ends in an error in state: 1241.
##
## interactive_type_expr -> type_expr . EOF [ # ]
##
## The known suffix of the stack is as follows:
## type_expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 102, spurious reduction of production type_name -> UIdent
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
##

Ill-formed type expression.
At this point, if the type expression is complete, the end of the
input is expected.

interactive_expr: LBRACE ELLIPSIS Bytes COMMA RBRACE As ZWSP
##
## Ends in an error in state: 278.
##
## typed_update_expr -> untyped_update_expr As . type_expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## untyped_update_expr As
##

Ill-formed typed expression.
At this point, a type is expected.

contract: Ident ZWSP
##
## Ends in an error in state: 319.
##
## bin_op(left_hs,BIT_AND_EQ,expr) -> left_hs . BIT_AND_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,BIT_OR_EQ,expr) -> left_hs . BIT_OR_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,BIT_SL_EQ,expr) -> left_hs . BIT_SL_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,BIT_SR_EQ,expr) -> left_hs . BIT_SR_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,BIT_XOR_EQ,expr) -> left_hs . BIT_XOR_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,DIV_EQ,expr) -> left_hs . DIV_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,EQ,expr) -> left_hs . EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,MINUS_EQ,expr) -> left_hs . MINUS_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,MULT_EQ,expr) -> left_hs . MULT_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,PLUS_EQ,expr) -> left_hs . PLUS_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
## bin_op(left_hs,REM_EQ,expr) -> left_hs . REM_EQ expr [ While WILD UIdent Type Switch Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PARAMS Namespace Let LBRACE Interface Import If Ident For Export EOF Directive Default Continue Const Case COMMA COLON Break Attr ]
##
## The known suffix of the stack is as follows:
## left_hs
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 58, spurious reduction of production var_path -> Ident
## In state 731, spurious reduction of production left_hs -> var_path
##

Ill-formed arithmetic expression.
At this point, if the expression is complete, an assignment symbol is
expected, e.g. '=', '+=', '&=' etc.

contract: Ident QMARK ZWSP
##
## Ends in an error in state: 761.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . app_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . incr_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . decr_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . assign_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . match_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . typed_expr COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK . par(expr) COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK
##

Ill-formed ternary conditional.
At this point, the expression for a true condition is expected.

contract: Ident QMARK Bytes As Ident XOR
##
## Ends in an error in state: 762.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr . COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK typed_expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 416, spurious reduction of production typed_expr -> app_expr_level As type_expr
##
contract: Ident QMARK Ident QMARK Ident MINUS2 COLON Ident MINUS2 BIT_AND
##
## Ends in an error in state: 773.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) . COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt)
##
contract: Ident QMARK Ident PLUS2 ZWSP
##
## Ends in an error in state: 803.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr . COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK incr_expr
##
contract: Ident QMARK Ident MINUS2 ZWSP
##
## Ends in an error in state: 813.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr . COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK decr_expr
##
contract: Ident QMARK Ident BIT_AND_EQ Bytes WILD
##
## Ends in an error in state: 823.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr . COLON par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK assign_expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 440, spurious reduction of production bin_op(left_hs,BIT_AND_EQ,expr) -> left_hs BIT_AND_EQ expr
## In state 406, spurious reduction of production assign_expr -> bin_op(left_hs,BIT_AND_EQ,expr)
##

Ill-formed ternary conditional statement.
At this point, if the expression for the true condition is complete, a
colon ':' is expected, followed by the expression for the false
condition.

contract: Ident QMARK Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW Bytes RBRACE RPAR COLON ZWSP
##
## Ends in an error in state: 794.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK match_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK match_expr COLON
##
contract: Ident QMARK Ident QMARK Ident MINUS2 COLON Ident MINUS2 COLON ZWSP
##
## Ends in an error in state: 774.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK ternary_expr(expr_stmt_cond,pre_expr_stmt) COLON
##
contract: Ident QMARK LPAR Bytes RPAR COLON ZWSP
##
## Ends in an error in state: 784.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK par(expr) COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK par(expr) COLON
##
contract: Ident QMARK Ident PLUS2 COLON ZWSP
##
## Ends in an error in state: 804.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK incr_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK incr_expr COLON
##
contract: Ident QMARK Ident MINUS2 COLON ZWSP
##
## Ends in an error in state: 814.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK decr_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK decr_expr COLON
##
contract: Ident QMARK Ident BIT_AND_EQ Bytes COLON ZWSP
##
## Ends in an error in state: 824.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK assign_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK assign_expr COLON
##
contract: Ident QMARK Bytes LPAR RPAR COLON ZWSP
##
## Ends in an error in state: 834.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK app_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK app_expr COLON
##
contract: Ident QMARK Bytes As Ident COLON ZWSP
##
## Ends in an error in state: 763.
##
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . app_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . incr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . decr_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . assign_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . match_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . typed_expr [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . ternary_expr(expr_stmt_cond,pre_expr_stmt) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
## ternary_expr(expr_stmt_cond,pre_expr_stmt) -> expr_stmt_cond QMARK typed_expr COLON . par(expr) [ While Type Switch SEMI_ELSE SEMI Return RBRACE Namespace Let LBRACE Interface Import If For Export EOF Directive Default Continue Const Case COLON Break ]
##
## The known suffix of the stack is as follows:
## expr_stmt_cond QMARK typed_expr COLON
##

Ill-formed ternary conditional statement.
At this point, the expression for a false condition is expected.

contract: Match LPAR ZWSP
##
## Ends in an error in state: 31.
##
## par(__anonymous_8) -> LPAR . match_subject COMMA braces(match_clauses) RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(__anonymous_8) -> LPAR . match_subject COMMA braces(match_clauses) PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed pattern matching.
At this point, the match subject is expected as an expression.

contract: Match LPAR Bytes When
##
## Ends in an error in state: 1183.
##
## par(__anonymous_8) -> LPAR match_subject . COMMA braces(match_clauses) RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(__anonymous_8) -> LPAR match_subject . COMMA braces(match_clauses) PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR match_subject
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 318, spurious reduction of production expr -> non_object_expr
## In state 1224, spurious reduction of production match_subject -> expr
##

Ill-formed pattern matching.
At this point, if the match subject is complete, a comma ',' is
expected.

contract: Match LPAR Bytes COMMA ZWSP
##
## Ends in an error in state: 1184.
##
## par(__anonymous_8) -> LPAR match_subject COMMA . braces(match_clauses) RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(__anonymous_8) -> LPAR match_subject COMMA . braces(match_clauses) PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR match_subject COMMA
##

Ill-formed pattern matching.
At this point, an opening brace '{' is expected.

contract: Match LPAR Bytes COMMA LBRACE ZWSP
##
## Ends in an error in state: 1185.
##
## braces(match_clauses) -> LBRACE . match_clauses RBRACE [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed pattern matching.
At this point, a match clause starting by a constructor or the keyword
'default' is expected.

contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR RPAR ARROW Bytes COMMA ZWSP
##
## Ends in an error in state: 1198.
##
## braces(match_clauses) -> LBRACE match_clauses . RBRACE [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## LBRACE match_clauses
##

Ill-formed pattern matching.
At this point, a closing brace '}' is expected.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW Bytes When
##
## Ends in an error in state: 1200.
##
## match_clauses -> match_clause . [ RBRACE ]
## match_clauses -> match_clause . COMMA [ RBRACE ]
## match_clauses -> match_clause . COMMA match_clauses [ RBRACE ]
##
## The known suffix of the stack is as follows:
## match_clause
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 297, spurious reduction of production fun_body -> non_object_expr
## In state 1194, spurious reduction of production clause_body -> fun_body
## In state 1219, spurious reduction of production match_clause -> ctor COLON option(ES6FUN) par(ioption(match_pattern)) ARROW clause_body
##
contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR RPAR ARROW Bytes When
##
## Ends in an error in state: 1196.
##
## match_clauses -> match_default . [ RBRACE ]
## match_clauses -> match_default . COMMA [ RBRACE ]
##
## The known suffix of the stack is as follows:
## match_default
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 327, spurious reduction of production app_expr_level -> core_expr
## In state 414, spurious reduction of production unary_expr_level -> app_expr_level
## In state 283, spurious reduction of production mult_expr_level -> unary_expr_level
## In state 299, spurious reduction of production add_expr_level -> mult_expr_level
## In state 376, spurious reduction of production eq_expr_level -> add_expr_level
## In state 324, spurious reduction of production comp_expr_level -> eq_expr_level
## In state 331, spurious reduction of production bit_shift_level -> comp_expr_level
## In state 384, spurious reduction of production conj_expr_level -> bit_shift_level
## In state 393, spurious reduction of production disj_expr_level -> conj_expr_level
## In state 325, spurious reduction of production non_object_expr -> disj_expr_level
## In state 297, spurious reduction of production fun_body -> non_object_expr
## In state 1194, spurious reduction of production clause_body -> fun_body
## In state 1195, spurious reduction of production match_default -> Default COLON par(__anonymous_9) ARROW clause_body
##

Ill-formed pattern matching.
At this point, one of the following is expected:
  * a comma ',' to terminate the current clause;
  * a closing brace '}' if no more clauses.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW Bytes COMMA ZWSP
##
## Ends in an error in state: 1201.
##
## match_clauses -> match_clause COMMA . [ RBRACE ]
## match_clauses -> match_clause COMMA . match_clauses [ RBRACE ]
##
## The known suffix of the stack is as follows:
## match_clause COMMA
##

Ill-formed pattern matching.
At this point, one of the following is expected:
  * a match clause starting by a constructor or the keyword 'default';
  * a closing brace '}' if no more clauses.

contract: Match LPAR Bytes COMMA LBRACE Default ZWSP
##
## Ends in an error in state: 1186.
##
## match_default -> Default . COLON par(__anonymous_9) ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## Default
##
contract: Match LPAR Bytes COMMA LBRACE UIdent ZWSP
##
## Ends in an error in state: 1203.
##
## match_clause -> ctor . COLON option(ES6FUN) par(ioption(match_pattern)) ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## ctor
##

Ill-formed pattern matching.
At this point, a colon ':' is expected, followed by an arrow function.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON ZWSP
##
## Ends in an error in state: 1204.
##
## match_clause -> ctor COLON . option(ES6FUN) par(ioption(match_pattern)) ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## ctor COLON
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON ES6FUN ZWSP
##
## Ends in an error in state: 1205.
##
## match_clause -> ctor COLON option(ES6FUN) . par(ioption(match_pattern)) ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## ctor COLON option(ES6FUN)
##
contract: Match LPAR Bytes COMMA LBRACE Default COLON ZWSP
##
## Ends in an error in state: 1187.
##
## match_default -> Default COLON . par(__anonymous_9) ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## Default COLON
##

Ill-formed pattern matching.
At this point, the match clause is expected as an expression.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR ZWSP
##
## Ends in an error in state: 1206.
##
## par(ioption(match_pattern)) -> LPAR . RPAR [ ARROW ]
## par(ioption(match_pattern)) -> LPAR . match_pattern RPAR [ ARROW ]
## par(ioption(match_pattern)) -> LPAR . PARAMS RPAR [ ARROW ]
## par(ioption(match_pattern)) -> LPAR . match_pattern PARAMS RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR
##

Ill-formed pattern matching.
At this point, one of the following is expected:
  * a pattern for the clause,
  * a closing parenthesis ')' if unit.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR UIdent ZWSP
##
## Ends in an error in state: 1211.
##
## match_pattern -> pattern . [ RPAR PARAMS ]
## typed_pattern -> pattern . type_annotation(type_expr) [ RPAR PARAMS ]
##
## The known suffix of the stack is as follows:
## pattern
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 521, spurious reduction of production ctor_app_pattern -> ctor
## In state 520, spurious reduction of production pattern -> ctor_app_pattern
##

Ill-formed pattern matching.
At this point, one of the following is expected:
  * a colon ':' followed by a type for the pattern;
  * a closing parenthesis ')' if the pattern is complete;

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR UIdent PARAMS ZWSP
##
## Ends in an error in state: 1215.
##
## par(ioption(match_pattern)) -> LPAR match_pattern PARAMS . RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR match_pattern PARAMS
##
contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR ZWSP
##
## Ends in an error in state: 1188.
##
## par(__anonymous_9) -> LPAR . RPAR [ ARROW ]
## par(__anonymous_9) -> LPAR . PARAMS RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR
##
contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR PARAMS ZWSP
##
## Ends in an error in state: 1190.
##
## par(__anonymous_9) -> LPAR PARAMS . RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR PARAMS
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR UIdent COLON Ident XOR
##
## Ends in an error in state: 1213.
##
## par(ioption(match_pattern)) -> LPAR match_pattern . RPAR [ ARROW ]
## par(ioption(match_pattern)) -> LPAR match_pattern . PARAMS RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR match_pattern
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 208, spurious reduction of production type_annotation(type_expr) -> COLON type_expr
## In state 1212, spurious reduction of production typed_pattern -> pattern type_annotation(type_expr)
## In state 1210, spurious reduction of production match_pattern -> typed_pattern
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR PARAMS ZWSP
##
## Ends in an error in state: 1208.
##
## par(ioption(match_pattern)) -> LPAR PARAMS . RPAR [ ARROW ]
##
## The known suffix of the stack is as follows:
## LPAR PARAMS
##

Ill-formed pattern matching.
At this point, a closing parenthesis ')' is expected.

contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR RPAR ZWSP
##
## Ends in an error in state: 1192.
##
## match_default -> Default COLON par(__anonymous_9) . ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## Default COLON par(__anonymous_9)
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ZWSP
##
## Ends in an error in state: 1217.
##
## match_clause -> ctor COLON option(ES6FUN) par(ioption(match_pattern)) . ARROW clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## ctor COLON option(ES6FUN) par(ioption(match_pattern))
##

Ill-formed pattern matching.
At this point, an arrow '=>' is expected, followed by an expression.

contract: Match LPAR Bytes COMMA LBRACE Default COLON LPAR RPAR ARROW ZWSP
##
## Ends in an error in state: 1193.
##
## match_default -> Default COLON par(__anonymous_9) ARROW . clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## Default COLON par(__anonymous_9) ARROW
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW ZWSP
##
## Ends in an error in state: 1218.
##
## match_clause -> ctor COLON option(ES6FUN) par(ioption(match_pattern)) ARROW . clause_body [ RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## ctor COLON option(ES6FUN) par(ioption(match_pattern)) ARROW
##

Ill-formed pattern matching.
At this point, the match clause is expected as an expression.

contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW Bytes RBRACE ZWSP
##
## Ends in an error in state: 1220.
##
## par(__anonymous_8) -> LPAR match_subject COMMA braces(match_clauses) . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
## par(__anonymous_8) -> LPAR match_subject COMMA braces(match_clauses) . PARAMS RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR match_subject COMMA braces(match_clauses)
##
contract: Match LPAR Bytes COMMA LBRACE UIdent COLON LPAR RPAR ARROW Bytes RBRACE PARAMS ZWSP
##
## Ends in an error in state: 1222.
##
## par(__anonymous_8) -> LPAR match_subject COMMA braces(match_clauses) PARAMS . RPAR [ XOR While WILD VBAR UIdent Type TIMES Switch Static SLASH SEMI_ELSE SEMI Return RPAR REM RBRACKET RBRACE QMARK PLUS PARAMS OR Namespace NE MINUS Let LT LPAR LE LBRACE Interface Import If Ident GT For Export EQ2 EOF Directive Default Continue Const Case COMMA COLON Break BIT_XOR BIT_SL BIT_AND Attr As AND ]
##
## The known suffix of the stack is as follows:
## LPAR match_subject COMMA braces(match_clauses) PARAMS
##

Ill-formed pattern matching.
At this point, a closing parenthesis ')' is expected.

contract: Class UIdent LBRACE ZWSP
##
## Ends in an error in state: 690.
##
## braces(class_members) -> LBRACE . class_members RBRACE [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## LBRACE
##

Ill-formed class.
At this point, a class member is expected.

contract: Class UIdent LBRACE Ident EQ ZWSP
##
## Ends in an error in state: 698.
##
## field_member -> member_name EQ . expr [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name EQ
##
contract: Class UIdent LBRACE Ident COLON Ident EQ ZWSP
##
## Ends in an error in state: 712.
##
## field_member -> member_name binding_type EQ . expr [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name binding_type EQ
##

Ill-formed class.
At this point, an initial expression for the field is expected.

contract: Class UIdent LBRACE Ident COLON Ident XOR
##
## Ends in an error in state: 711.
##
## field_member -> member_name binding_type . EQ expr [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name binding_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 561, spurious reduction of production gen_type_expr -> type_expr
## In state 562, spurious reduction of production type_annotation(gen_type_expr) -> COLON gen_type_expr
## In state 563, spurious reduction of production binding_type -> type_annotation(gen_type_expr)
##

Ill-formed class.
At this point, the assignment operator '=' is expected.

contract: Class UIdent LBRACE Attr ZWSP
##
## Ends in an error in state: 715.
##
## class_member -> Attr . class_member [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## Attr
##

Ill-formed class.
At this point, one of the following is expected:
  * another attribute;
  * a class member.

contract: Class UIdent LBRACE UIdent ZWSP
##
## Ends in an error in state: 697.
##
## field_member -> member_name . EQ expr [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## field_member -> member_name . binding_type EQ expr [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name . option(ES6FUN) par(fun_params) braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name . option(ES6FUN) par(fun_params) ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name . type_vars option(ES6FUN) par(fun_params) braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name . type_vars option(ES6FUN) par(fun_params) ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name
##

Ill-formed method in a class.
At this point, one of the following is expected:
  * type parameters starting with an opening chevron '<';
  * value parameters starting with an opening parenthesis '('.

contract: Class UIdent LBRACE Ident LT GT XOR
##
## Ends in an error in state: 700.
##
## method_member -> member_name type_vars . option(ES6FUN) par(fun_params) braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name type_vars . option(ES6FUN) par(fun_params) ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name type_vars
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 46, spurious reduction of production gt -> GT
## In state 48, spurious reduction of production chevrons(sep_or_term(type_var,COMMA)) -> LT sep_or_term(type_var,COMMA) gt
## In state 235, spurious reduction of production type_vars -> chevrons(sep_or_term(type_var,COMMA))
##
contract: Class UIdent LBRACE Ident LT GT ES6FUN ZWSP
##
## Ends in an error in state: 701.
##
## method_member -> member_name type_vars option(ES6FUN) . par(fun_params) braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name type_vars option(ES6FUN) . par(fun_params) ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name type_vars option(ES6FUN)
##
contract: Class UIdent LBRACE Ident ES6FUN ZWSP
##
## Ends in an error in state: 706.
##
## method_member -> member_name option(ES6FUN) . par(fun_params) braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name option(ES6FUN) . par(fun_params) ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name option(ES6FUN)
##

Ill-formed method in a class.
At this point, value parameters are expected between parentheses.

contract: Class UIdent LBRACE Ident LT GT LPAR RPAR ZWSP
##
## Ends in an error in state: 702.
##
## method_member -> member_name type_vars option(ES6FUN) par(fun_params) . braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name type_vars option(ES6FUN) par(fun_params) . ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name type_vars option(ES6FUN) par(fun_params)
##
contract: Class UIdent LBRACE Ident LPAR RPAR ZWSP
##
## Ends in an error in state: 707.
##
## method_member -> member_name option(ES6FUN) par(fun_params) . braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## method_member -> member_name option(ES6FUN) par(fun_params) . ret_type braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name option(ES6FUN) par(fun_params)
##

Ill-formed method in a class.
At this point, one of the following is expected:
  * a block of statements starting with an opening brace '{';
  * the return type after a colon ':'.

contract: Class UIdent LBRACE Ident LT GT LPAR RPAR COLON Ident XOR
##
## Ends in an error in state: 703.
##
## method_member -> member_name type_vars option(ES6FUN) par(fun_params) ret_type . braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name type_vars option(ES6FUN) par(fun_params) ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##
contract: Class UIdent LBRACE Ident LPAR RPAR COLON Ident XOR
##
## Ends in an error in state: 708.
##
## method_member -> member_name option(ES6FUN) par(fun_params) ret_type . braces(statements) [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## member_name option(ES6FUN) par(fun_params) ret_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 455, spurious reduction of production type_annotation(__anonymous_7) -> COLON option(ES6FUN) core_type
## In state 458, spurious reduction of production ret_type -> type_annotation(__anonymous_7)
##

Ill-formed method in a class.
At this point, a block of statements is expected to start with an
opening brace '{'.

contract: Class UIdent LBRACE Ident EQ Bytes SEMI ZWSP
##
## Ends in an error in state: 720.
##
## braces(class_members) -> LBRACE class_members . RBRACE [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## LBRACE class_members
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 723, spurious reduction of production nseq(__anonymous_2) -> class_member SEMI
## In state 719, spurious reduction of production class_members -> nseq(__anonymous_2)
##

Ill-formed class.
At this point, one of the following is expected:
  * another member;
  * a closing brace '}' if no more members.

contract: Class ZWSP
##
## Ends in an error in state: 687.
##
## class_decl -> Class . class_name braces(class_members) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## class_decl -> Class . class_name implements braces(class_members) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## Class
##

Ill-formed class.
At this point, a class name is expected.

contract: Class UIdent ZWSP
##
## Ends in an error in state: 689.
##
## class_decl -> Class class_name . braces(class_members) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
## class_decl -> Class class_name . implements braces(class_members) [ SEMI_ELSE SEMI RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## Class class_name
##

Ill-formed class.
At this point, one of the following is expected:
  * a block of members starting with an opening brace '{';
  * the keyword 'implements', followed by an interface.

contract: Interface UIdent LBRACE Ident COLON Ident SEMI ZWSP
##
## Ends in an error in state: 586.
##
## nsepseq(property_type,property_sep) -> property_type property_sep . nsepseq(property_type,property_sep) [ RBRACE ]
## nseq(__anonymous_0(property_type,property_sep)) -> property_type property_sep . [ RBRACE ]
## nseq(__anonymous_0(property_type,property_sep)) -> property_type property_sep . nseq(__anonymous_0(property_type,property_sep)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_type property_sep
##

Ill-formed interface.
At this point, one of the following is expected:
  * a property name;
  * a closing brace '}' if no more property types.

contract: Interface UIdent LBRACE Ident ZWSP
##
## Ends in an error in state: 587.
##
## property_type -> property_name . option(QMARK) binding_type [ SEMI RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_name
##

Ill-formed value declarations in an interface.
At this point, one of the following is expected:
  * a colon ':', followed by the type of the value.
  * a question mark '?', marking the declaration as optional.

contract: Interface UIdent LBRACE Ident QMARK ZWSP
##
## Ends in an error in state: 589.
##
## property_type -> property_name option(QMARK) . binding_type [ SEMI RBRACE COMMA ]
##
## The known suffix of the stack is as follows:
## property_name option(QMARK)
##

Ill-formed value declaration in an interface.
At this point, a colon ':' is expected, followed by the type of the
value.

contract: Interface UIdent LBRACE Ident COLON Ident XOR
##
## Ends in an error in state: 583.
##
## nsepseq(property_type,property_sep) -> property_type . [ RBRACE ]
## nsepseq(property_type,property_sep) -> property_type . property_sep nsepseq(property_type,property_sep) [ RBRACE ]
## nseq(__anonymous_0(property_type,property_sep)) -> property_type . property_sep [ RBRACE ]
## nseq(__anonymous_0(property_type,property_sep)) -> property_type . property_sep nseq(__anonymous_0(property_type,property_sep)) [ RBRACE ]
##
## The known suffix of the stack is as follows:
## property_type
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 130, spurious reduction of production type_name -> Ident
## In state 152, spurious reduction of production core_type -> type_name
## In state 180, spurious reduction of production nsepseq(core_type,VBAR) -> core_type
## In state 170, spurious reduction of production union_type_level -> nsepseq(core_type,VBAR)
## In state 151, spurious reduction of production type_expr -> union_type_level
## In state 561, spurious reduction of production gen_type_expr -> type_expr
## In state 562, spurious reduction of production type_annotation(gen_type_expr) -> COLON gen_type_expr
## In state 563, spurious reduction of production binding_type -> type_annotation(gen_type_expr)
## In state 590, spurious reduction of production property_type -> property_name option(QMARK) binding_type
##

Ill-formed interface.
At this point, if the declaration is complete, one of the following is
expected:
  * a semicolon ';' followed by another declaration ('type' or 'const');
  * a closing brace '}' if no more declarations.

contract: Class UIdent Implements ZWSP
##
## Ends in an error in state: 726.
##
## implements -> Implements . nsepseq(interface_expr,COMMA) [ LBRACE ]
##
## The known suffix of the stack is as follows:
## Implements
##

Ill-formed interface declaration.
At this point, an interface is expected.

contract: Class UIdent Implements UIdent ZWSP
##
## Ends in an error in state: 601.
##
## nsepseq(interface_expr,COMMA) -> interface_expr . [ LBRACE ]
## nsepseq(interface_expr,COMMA) -> interface_expr . COMMA nsepseq(interface_expr,COMMA) [ LBRACE ]
##
## The known suffix of the stack is as follows:
## interface_expr
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 110, spurious reduction of production namespace_selection -> namespace_name
## In state 600, spurious reduction of production interface_expr -> namespace_selection
##

Ill-formed namespace declaration.
At this point, if the interface is complete, one of the following is
expected:
  * a comma ',' followed by another interface to be implemented;
  * a closing brace '}' is no more interface.

interactive_type_expr: ParameterOf LT ZWSP
##
## Ends in an error in state: 105.
##
## chevrons(namespace_selection) -> LT . namespace_selection gt [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LT
##

Ill-formed parameter of a contract class.
At this point, a qualified class name is expected.

interactive_type_expr: ParameterOf LT UIdent ZWSP
##
## Ends in an error in state: 107.
##
## chevrons(namespace_selection) -> LT namespace_selection . gt [ While WILD Verbatim VBAR UIdent Type True Switch String Static SEMI_ELSE SEMI Return RPAR RBRACKET RBRACE PLUS2 PARAMS Namespace Match MINUS2 Let LPAR LBRACKET LBRACE Interface Int Import If Ident GT Function For False Export EQ EOF Directive Default ContractOf Continue Const Class Case COMMA COLON Bytes Break Attr ARROW ]
##
## The known suffix of the stack is as follows:
## LT namespace_selection
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 110, spurious reduction of production namespace_selection -> namespace_name
##

Ill-formed parameter of a contract class.
At this point, a closing chevron '>' is expected.

contract: Class UIdent LBRACE Static ZWSP
##
## Ends in an error in state: 693.
##
## class_member -> Static . method_member [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
## class_member -> Static . field_member [ WILD UIdent Static SEMI RBRACE Ident Default Attr ]
##
## The known suffix of the stack is as follows:
## Static
##

Ill-formed static class member,
At this point, the name of a method or field is expected.

contract: Directive ZWSP
##
## Ends in an error in state: 1090.
##
## statements -> catenable_stmt . statements [ RBRACE EOF Default Case ]
##
## The known suffix of the stack is as follows:
## catenable_stmt
##
## WARNING: This example involves spurious reductions.
## This implies that, although the LR(1) items shown above provide an
## accurate view of the past (what has been recognized so far), they
## may provide an INCOMPLETE view of the future (what was expected next).
## In state 1089, spurious reduction of production catenable_stmt -> directive_stmt
##

Ill-formed statements.
At this point, a statement is expected.

contract: Switch LPAR Bytes RPAR LBRACE Case Bytes LPAR RPAR ZWSP
##
## Ends in an error in state: 1130.
##
## lambda -> call_expr . [ LPAR ]
## path(call_expr) -> call_expr . nseq(selection) [ LPAR COLON ]
##
## The known suffix of the stack is as follows:
## call_expr
##

Ill-formed function call.
At this point, one of the following is expected:
  * a closing parenthese ')';
  * a dot '.' or opening bracket '[' if the call returns an
    object;
