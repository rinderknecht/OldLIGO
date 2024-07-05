
(* This file was auto-generated based on "Parser.msg". *)

(* Please note that the function [message] can raise [Not_found]. *)

let message =
  fun s ->
    match s with
    | 1130 ->
        "Ill-formed function call.\nAt this point, one of the following is expected:\n  * a closing parenthese ')';\n  * a dot '.' or opening bracket '[' if the call returns an\n    object;\n"
    | 1090 ->
        "Ill-formed statements.\nAt this point, a statement is expected.\n"
    | 693 ->
        "Ill-formed static class member,\nAt this point, the name of a method or field is expected.\n"
    | 107 ->
        "Ill-formed parameter of a contract class.\nAt this point, a closing chevron '>' is expected.\n"
    | 105 ->
        "Ill-formed parameter of a contract class.\nAt this point, a qualified class name is expected.\n"
    | 601 ->
        "Ill-formed namespace declaration.\nAt this point, if the interface is complete, one of the following is\nexpected:\n  * a comma ',' followed by another interface to be implemented;\n  * a closing brace '}' is no more interface.\n"
    | 726 ->
        "Ill-formed interface declaration.\nAt this point, an interface is expected.\n"
    | 583 ->
        "Ill-formed interface.\nAt this point, if the declaration is complete, one of the following is\nexpected:\n  * a semicolon ';' followed by another declaration ('type' or 'const');\n  * a closing brace '}' if no more declarations.\n"
    | 589 ->
        "Ill-formed value declaration in an interface.\nAt this point, a colon ':' is expected, followed by the type of the\nvalue.\n"
    | 587 ->
        "Ill-formed value declarations in an interface.\nAt this point, one of the following is expected:\n  * a colon ':', followed by the type of the value.\n  * a question mark '?', marking the declaration as optional.\n"
    | 586 ->
        "Ill-formed interface.\nAt this point, one of the following is expected:\n  * a property name;\n  * a closing brace '}' if no more property types.\n"
    | 689 ->
        "Ill-formed class.\nAt this point, one of the following is expected:\n  * a block of members starting with an opening brace '{';\n  * the keyword 'implements', followed by an interface.\n"
    | 687 ->
        "Ill-formed class.\nAt this point, a class name is expected.\n"
    | 720 ->
        "Ill-formed class.\nAt this point, one of the following is expected:\n  * another member;\n  * a closing brace '}' if no more members.\n"
    | 703 | 708 ->
        "Ill-formed method in a class.\nAt this point, a block of statements is expected to start with an\nopening brace '{'.\n"
    | 702 | 707 ->
        "Ill-formed method in a class.\nAt this point, one of the following is expected:\n  * a block of statements starting with an opening brace '{';\n  * the return type after a colon ':'.\n"
    | 700 | 701 | 706 ->
        "Ill-formed method in a class.\nAt this point, value parameters are expected between parentheses.\n"
    | 697 ->
        "Ill-formed method in a class.\nAt this point, one of the following is expected:\n  * type parameters starting with an opening chevron '<';\n  * value parameters starting with an opening parenthesis '('.\n"
    | 715 ->
        "Ill-formed class.\nAt this point, one of the following is expected:\n  * another attribute;\n  * a class member.\n"
    | 711 ->
        "Ill-formed class.\nAt this point, the assignment operator '=' is expected.\n"
    | 698 | 712 ->
        "Ill-formed class.\nAt this point, an initial expression for the field is expected.\n"
    | 690 ->
        "Ill-formed class.\nAt this point, a class member is expected.\n"
    | 1220 | 1222 ->
        "Ill-formed pattern matching.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 1193 | 1218 ->
        "Ill-formed pattern matching.\nAt this point, the match clause is expected as an expression.\n"
    | 1192 | 1217 ->
        "Ill-formed pattern matching.\nAt this point, an arrow '=>' is expected, followed by an expression.\n"
    | 1215 | 1188 | 1190 | 1213 | 1208 ->
        "Ill-formed pattern matching.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 1211 ->
        "Ill-formed pattern matching.\nAt this point, one of the following is expected:\n  * a colon ':' followed by a type for the pattern;\n  * a closing parenthesis ')' if the pattern is complete;\n"
    | 1206 ->
        "Ill-formed pattern matching.\nAt this point, one of the following is expected:\n  * a pattern for the clause,\n  * a closing parenthesis ')' if unit.\n"
    | 1204 | 1205 | 1187 ->
        "Ill-formed pattern matching.\nAt this point, the match clause is expected as an expression.\n"
    | 1186 | 1203 ->
        "Ill-formed pattern matching.\nAt this point, a colon ':' is expected, followed by an arrow function.\n"
    | 1201 ->
        "Ill-formed pattern matching.\nAt this point, one of the following is expected:\n  * a match clause starting by a constructor or the keyword 'default';\n  * a closing brace '}' if no more clauses.\n"
    | 1200 | 1196 ->
        "Ill-formed pattern matching.\nAt this point, one of the following is expected:\n  * a comma ',' to terminate the current clause;\n  * a closing brace '}' if no more clauses.\n"
    | 1198 ->
        "Ill-formed pattern matching.\nAt this point, a closing brace '}' is expected.\n"
    | 1185 ->
        "Ill-formed pattern matching.\nAt this point, a match clause starting by a constructor or the keyword\n'default' is expected.\n"
    | 1184 ->
        "Ill-formed pattern matching.\nAt this point, an opening brace '{' is expected.\n"
    | 1183 ->
        "Ill-formed pattern matching.\nAt this point, if the match subject is complete, a comma ',' is\nexpected.\n"
    | 31 ->
        "Ill-formed pattern matching.\nAt this point, the match subject is expected as an expression.\n"
    | 794 | 774 | 784 | 804 | 814 | 824 | 834 | 763 ->
        "Ill-formed ternary conditional statement.\nAt this point, the expression for a false condition is expected.\n"
    | 762 | 773 | 803 | 813 | 823 ->
        "Ill-formed ternary conditional statement.\nAt this point, if the expression for the true condition is complete, a\ncolon ':' is expected, followed by the expression for the false\ncondition.\n"
    | 761 ->
        "Ill-formed ternary conditional.\nAt this point, the expression for a true condition is expected.\n"
    | 319 ->
        "Ill-formed arithmetic expression.\nAt this point, if the expression is complete, an assignment symbol is\nexpected, e.g. '=', '+=', '&=' etc.\n"
    | 278 ->
        "Ill-formed typed expression.\nAt this point, a type is expected.\n"
    | 1241 ->
        "Ill-formed type expression.\nAt this point, if the type expression is complete, the end of the\ninput is expected.\n"
    | 1240 ->
        "Ill-formed type expression.\nAt this point, a type expression is expected.\n"
    | 1085 ->
        "Ill-formed statement.\nAt this point, a statement other than an expresswion is expected.\n"
    | 771 ->
        "Ill-formed typed expression.\nAt this point, if the expression is complete, the keyword 'as' is\nexpected, followed by a type.\n"
    | 391 ->
        "Ill-formed ternary conditional expression.\nAt this point, the expression for a false condition is expected.\n"
    | 598 ->
        "Ill-formed interface declaration.\nAt this point, an interface is expected.\n"
    | 602 ->
        "Ill-formed interface declaration.\nAt this point, an interface expression is expected.\n"
    | 442 ->
        "Ill-formed constructor application.\nAt this point, an argument is expected.\n"
    | 441 ->
        "Ill-formed constructor application.\nAt this point, if the argument is complete, one of the following is\nexpected:\n  * a comma ',' followed by another argument;\n  * a closing parenthesis ')' otherwise.\n"
    | 309 | 316 ->
        "Ill-formed constructor application.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 307 ->
        "Ill-formed constructor application.\nAt this point, one of the following is expected:\n  * an argument;\n  * a closing parenthesis ')' otherwise.\n"
    | 116 ->
        "Ill-formed variant type or array type.\nAt this point, one of the following is expected:\n  * a string denoting a constructor;\n  * a type denoting an element of an array type.\n"
    | 534 | 524 ->
        "Ill-formed pattern of constructor application.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 527 ->
        "Ill-formed pattern of constructor application.\nAt this point, a pattern matching an argument is expected.\n"
    | 526 ->
        "Ill-formed pattern of constructor application.\nAt this point, one of the following is expected:\n  * a comma ',' followed by a pattern matching an argument;\n  * a closing parenthesis ')' if the constructor is constant.\n"
    | 522 ->
        "Ill-formed pattern of constructor application.\nAt this point, one of the following is expected:\n  * a pattern matching an argument;\n  * a closing parenthesis ')' if the constructor is constant.\n"
    | 570 | 556 | 565 ->
        "Ill-formed value declaration.\nAt this point, the right-hand side is expected as an expression.\n"
    | 1227 | 1229 ->
        "Ill-formed while-loop.\nAt this point, if the condition is complete, a closing parenthesis ')'\nis expected.\n"
    | 1178 ->
        "Ill-formed parenthesised expression.\nAt this point, if the expression is complete, a closing parenthesis\n')' is expected.\n"
    | 1174 ->
        "Ill-formed array.\nAt this point, one of the following is expected:\n  * a comma ',' followed by another element;\n  * a closing bracket ']' otherwise.\n"
    | 1155 ->
        "Ill-formed record.\nAt this point, one of the following is expected:\n  * a comma ',';\n  * a closing brace '}' if no more fields.\n"
    | 1148 ->
        "Ill-formed record update.\nAt this point, if the record to update is complete, a comma ',' is\nexpected.\n"
    | 1136 ->
        "Ill-formed switch.\nAt this point, if the case is complete, one of the following is\nexpected:\n  * another case (starting by 'case' or 'default');\n  * a closing brace '}' is no more cases.\n"
    | 1132 ->
        "Ill-formed switch.\nAt this point, one of the following is expected:\n  * the keyword 'case' to start a new case;\n  * the keyword 'default' to start the default case;\n  * a closing brace '}' if no more cases.\n"
    | 1127 ->
        "Ill-formed switch.\nAt this point, a colon ':' is expected.\n"
    | 1128 ->
        "Ill-formed switch.\nAt this point, one of the following is expected:\n  * the keyword 'case' to start a new case;\n  * the keyword 'default' to start the default case;\n  * a statement for the current case;\n  * a closing brace '}' if the case is empty.\n"
    | 1122 ->
        "Ill-formed switch.\nAt this point, a case expression is expected.\n"
    | 934 | 954 | 1017 | 1051 | 1030 | 942 | 968 | 1022 | 1054 | 1037 ->
        "Ill-formed conditional statement.\nAt this point, the statement for a false condition is expected.\n"
    | 849 | 956 | 981 | 1057 ->
        "Ill-formed for-loop.\nAt this point, the body is expected as a statement.\n"
    | 390 ->
        "Ill-formed ternary conditional expression.\nAt this point, if the expression for the true condition is complete, a\ncolon ':' is expected, followed by the expression for the false\ncondition.\n"
    | 389 | 736 ->
        "Ill-formed for-loop.\nAt this point, if the range expression is complete, a closing\nparenthesis ')' is expected.\n"
    | 738 ->
        "Ill-formed for-loop.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 675 | 753 ->
        "Ill-formed for-loop.\nAt this point, a semicolon ';' is expected.\n"
    | 672 ->
        "Ill-formed for-loop.\nAt this point, an expression is expected.\n"
    | 671 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * a comma ',' followed by another afterthought expression;\n  * a closing parenthesis ')' otherwise.\n"
    | 644 ->
        "Ill-formed while-loop.\nAt this point, the invariant is expected between parentheses.\n"
    | 643 | 647 | 1048 | 979 | 975 ->
        "Ill-formed conditional statement.\nAt this point, the statement for a true condition is expected.\n"
    | 638 | 640 ->
        "Ill-formed conditional statement.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 483 ->
        "Ill-formed switch.\nAt this point, if the expression is complete, a closing parenthesis\n')' is expected.\n"
    | 196 ->
        "Ill-formed array type.\nAt this point, one of the following is expected:\n  * a type for an element;\n  * a closing bracket ']' if no more elements.\n"
    | 195 ->
        "Ill-formed array type.\nAt this point, one of the following is expected:\n  * a comma ',' followed by a type;\n  * a closing bracket ']' if no more elements.\n"
    | 101 ->
        "Ill-formed variant or union type.\nAt this point, one of the following is expected:\n  * a record type if defining a union type;\n  * a variant, otherwise.\n"
    | 306 ->
        "Ill-formed constructor application.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 573 ->
        "Ill-formed value declaration.\nAt this point, the right-hand side is expected as an expression.\n"
    | 1236 ->
        "Ill-formed expression.\nAt this point, an expression is expected.\n"
    | 1139 ->
        "Ill-formed block of statements.\nAt this point, if the statement is complete, one of the following is\nexpected:\n  * a semicolon ';' followed by another statement;\n  * a closing brace '}' if no more statements.\n"
    | 1059 | 1032 ->
        "Ill-formed for-loop.\nAt this point, the body is expected as a statement.\n"
    | 1061 | 850 | 982 ->
        "Ill-formed export declaration.\nAt this point, a declaration is expected.\n"
    | 955 | 664 | 980 | 1031 | 1056 ->
        "Ill-formed for-loop.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 851 ->
        "Ill-formed value declaration.\nAt this point, a pattern is expected, e.g. a variable.\n"
    | 750 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * a semicolon ';',\n  * the invariant as a boolean expression.\n"
    | 749 ->
        "Ill-formed for-loop.\nAt this point, a semicolon ';' is expected.\n"
    | 742 ->
        "Ill-formed for-loop.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 680 | 684 ->
        "Ill-formed for-loop.\nAt this point, the range is expected as an expression.\n"
    | 679 | 683 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * the keyword 'of' if defining a for-of loop;\n  * the assignment operator '=' to define the initialiser;\n  * a colon ':' followed by the type of the initialiser.\n"
    | 678 | 682 ->
        "Ill-formed for-loop.\nAt this point, a pattern is expected, e.g. a variable.\n"
    | 667 | 751 | 676 | 754 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * an afterthought, e.g. incrementing a variable;\n  * a closing parenthesis ')' if none.\n"
    | 260 ->
        "Ill-formed selection in nested namespaces.\nAt this point, the selection operator '.' is expected.\n"
    | 1180 ->
        "Ill-formed parenthesised expression.\nAt this point, if the expression is complete, a closing parenthesis\n')' is expected.\n"
    | 1175 ->
        "Ill-formed array.\nAt this point, one of the following is expected:\n  * another element;\n  * a closing bracket ']' if no more elements.\n"
    | 1149 ->
        "Ill-formed record update.\nAt this point, record assignments are expected.\n"
    | 645 | 971 | 977 | 1232 | 973 ->
        "Ill-formed while-loop.\nAt this point, the body is expected as a statement.\n"
    | 491 ->
        "Ill-formed default switch case\nAt this point, one of the following is expected:\n  * a statement;\n  * a closing brace '}' if no more cases.\n"
    | 568 ->
        "Ill-formed value declaration.\nAt this point, a pattern is expected, e.g. a variable.\n"
    | 490 ->
        "Ill-formed default switch case\nAt this point, a colon ':' is expected.\n"
    | 489 ->
        "Ill-formed switch.\nAt this point, one of the following is expected:\n  * the keyword 'case' introducing a new case;\n  * the keyword 'default' introducing the default case.\n"
    | 488 ->
        "Ill-formed switch.\nAt this point, an opening brace '{' is expected, followed by cases.\n"
    | 485 ->
        "Ill-formed switch.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 468 ->
        "Ill-formed function call.\nAt this point, another argument is expected.\n"
    | 467 ->
        "Ill-formed function call.\nAt this point, one of the following is expected:\n   * a comma ',' followed by another argument;\n   * a closing parenthesis ')' if no more arguments.\n"
    | 415 | 281 ->
        "Ill-formed typed expression.\nAt this point, a type is expected.\n"
    | 326 | 330 | 332 | 417 | 419 | 346 | 348 | 350 | 352 | 354 | 361 | 364 | 359 | 377 | 379 | 367 | 382 | 387 | 300 | 35 | 28 | 250 ->
        "Ill-formed expression.\nAt this point, an expression is expected.\n"
    | 274 | 464 ->
        "Ill-formed function call.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 272 ->
        "Ill-formed function call.\nAt this point, one of the following is expected:\n  * an argument;\n  * a closing parenthesis ')' otherwise.\n"
    | 271 ->
        "Ill-formed function call.\nAt this point, the arguments are expected between parentheses.\n"
    | 202 | 204 ->
        "Ill-formed parenthesised type.\nAt this point, if the type is complete, a closing parenthesis ')' is\nexpected.\n"
    | 174 ->
        "Ill-formed selection of a type in a namespace.\nAt this point, one of the following is expected:\n  * a type name;\n  * another namespace name.\n"
    | 181 ->
        "Ill-formed union type.\nAt this point, a record type is expected.\n"
    | 158 ->
        "Ill-formed generic type.\nAt his point, one of the following is expected:\n  * a type argument as a type;\n  * a closing chevron '>' if no more arguments.\n"
    | 157 ->
        "Ill-formed generic type instantiation.\nAt this point, one of the following is expected:\n  * a comma ',' followed by another type;\n  * a closing chevron '>' if no more arguments.\n"
    | 155 ->
        "Ill-formed generic type instantiation.\nAt this point, a type is expected.\n"
    | 150 ->
        "Ill-formed function type.\nAt this point, the return type is expected.\n"
    | 149 ->
        "Ill-formed function type.\nAt this point, an arrow '=>' is expected, followed by the return type.\n"
    | 146 ->
        "Ill-formed function type.\nAt this point, one of the following is expected:\n  * another parameter as a variable;\n  * a closing parenthesis ')' if no more parameters.\n"
    | 145 ->
        "Ill-formed function type.\nAt this point, if the parameter type is complete, one of the following\nis expected:\n  * a comma ',' followed by another parameter type;\n  * a closing parenthesis ')' if no more parameters.\n"
    | 143 ->
        "Ill-formed function type.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 135 | 133 ->
        "Ill-formed function type.\nAt this point, a colon ':' is expected, followed by the type of the\nparameter.\n"
    | 132 ->
        "Ill-formed function type.\nAt this point, one of the following is expected:\n  * the first parameter (variable);\n  * a closing parenthesis ')' if no parameters.\n"
    | 131 ->
        "Ill-formed function type.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 115 ->
        "Ill-formed parenthesised type.\nAt this point, a type is expected.\n"
    | 104 ->
        "Ill-formed parameter of a contract class.\nAt this point, a class name is expected.\n"
    | 122 ->
        "Ill-formed record type.\nAt this point, one of the following is expected:\n  * a semicolon ';' followed by another field;\n  * a closing brace '}' if no more fields.\n"
    | 120 ->
        "Ill-formed record type.\nAt this point, one of the following is expected:\n  * a semicolon ';';\n  * a closing brace '}' if no more fields;\n  * a colon ':' followed by the type of the field.\n"
    | 123 ->
        "Ill-formed record type.\nAt this point, one of the following is expected:\n  * a field name,\n  * an integer denoting the field,\n  * a string denoting the field;\n  * a closing brace '}' if no more fields;\n"
    | 117 ->
        "Ill-formed record type.\nAt this point, one of the following is expected:\n  * a field name,\n  * an integer denoting the field,\n  * a string denoting the field.\n"
    | 666 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * the invariant as a boolean expression;\n  * a semicolon ';' if no condition.\n"
    | 665 ->
        "Ill-formed for-loop.\nAt this point, one of the following is expected:\n  * the initialisation as a statement;\n  * a semicolon ';' if no initialisation;\n  * the keywords 'const' or 'let' followed by a variable.\n"
    | 656 | 661 ->
        "Ill-formed function declaration.\nAt this point, if the return type is complete, the body is expected as\na block of statements starting with an opening brace '{'.\n"
    | 655 | 660 ->
        "Ill-formed function declaration.\nAt this point, one of the following is expected:\n  * a colon ':' followed by the return type;\n  * the body as a block of statements starting with an opening brace\n    '{'.\n"
    | 653 | 654 | 659 ->
        "Ill-formed function declaration.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 652 ->
        "Ill-formed function declaration.\nAt this point, one of the following is expected:\n  * an opening parenthesis '(' optionally followed by parameters;\n  * an opening chevron '<' optionally followed by type parameters.\n"
    | 648 ->
        "Ill-formed function declaration.\nAt this point, the function name is expected.\n"
    | 637 ->
        "Ill-formed conditional statement.\nAt this point, the condition is expected as a boolean expression.\n"
    | 636 | 1047 | 646 | 978 | 974 ->
        "Ill-formed conditional statement.\nAt this point, an opening parenthesis '(' is expected, followed by the\ncondition.\n"
    | 631 ->
        "Ill-formed import declaration.\nAt this point, a namespace name is expected.\n"
    | 630 ->
        "Ill-formed import declaration.\nAt this point, the assignment symbol '=' is expected.\n"
    | 620 | 618 ->
        "Ill-formed import declaration.\nAt this point, one of the following is expected:\n  * the name of an imported type or value;\n  * a closing brace '}' if no more imports.\n"
    | 617 | 619 ->
        "Ill-formed import declaration.\nAt this point, one of the following is expected:\n  * a comma ',' followed by the name of an imported type or value;\n  * a closing brace '}' if no more imports.\n"
    | 616 ->
        "Ill-formed import declaration.\nAt this point, the name of an imported type or value is expected.\n"
    | 613 | 634 ->
        "Ill-formed import declaration.\nAt this point, a file path to a LIGO source is expected as a string.\n"
    | 612 | 633 ->
        "Ill-formed import declaration.\nAt this point, the keyword 'from' is expected.\n"
    | 611 ->
        "Ill-formed import declaration.\nAt this point, the name of the namespace is expected.\n"
    | 610 ->
        "Ill-formed import declaration.\nAt this point, the keyword 'as' is expected.\n"
    | 609 ->
        "Ill-formed import declaration.\nAt this point, one of the following is expected:\n  * a namespace name if aliasing a namespace;\n  * the symbol '*' to import all entries from a namespace;\n  * an opening brace '{' to import a list of entries.\n"
    | 581 ->
        "Ill-formed interface.\nAt this point, a property name is expected, with a type annotation.\n"
    | 580 ->
        "Ill-formed interface declaration.\nAt this point, one of the following is expected:\n  * an opening brace '{' is expected, followed by entries;\n  * the keyword 'extends'.\n"
    | 578 ->
        "Ill-formed interface declaration.\nAt this point, the name of the interface is expected.\n"
    | 1233 ->
        "Ill-formed contract.\nAt this point, if the statement is complete, one of the following is\nexpected:\n  * a semicolon ';' followed by another statement;\n  * a statement;\n  * the end of the contract.\n"
    | 1238 ->
        "Ill-formed expression.\nAt this point, if the expression is complete, the end of the input is\nexpected.\n"
    | 572 ->
        "Ill-formed value declaration.\nAt this point, if the type is complete, the assignment symbol '=' is\nexpected, followed by an expression.\n"
    | 559 ->
        "Ill-formed generic type annotation.\nAt this point, if the type variables are complete, a type is expected.\n"
    | 558 ->
        "Ill-formed type annotation.\nAt this point, one of the following is expected:\n  * a type;\n  * an opening chevron '<' followed by type variables if the type is\n    generic.\n"
    | 569 | 564 | 555 ->
        "Ill-formed value declaration.\nAt this point, one of the following is expected:\n  * a colon ':' followed by the type of the value;\n  * the assignment symbol '=' followed by an expression.\n"
    | 499 ->
        "Ill-formed value declaration.\nAt this point, a pattern is expected, e.g. a variable.\n"
    | 237 ->
        "Ill-formed switch.\nAt this point, the expression used to switch is expected.\n"
    | 236 ->
        "Ill-formed switch.\nAt this point, an opening parenthesis '(' is expected, followed by an\nexpression.\n"
    | 1166 ->
        "Ill-formed array.\nAt this point, and expression denoting an array is expected.\n"
    | 1156 ->
        "Ill-formed record.\nAt this point, one of the following is expected:\n  * a field;\n  * a closing brace '}' if no more fields.\n"
    | 1153 ->
        "Ill-formed record.\nAt this point, an expression is expected for the field.\n"
    | 1152 ->
        "Ill-formed record.\nAt this point, one of the following is expected:\n  * a colon ':' followed by an expression;\n  * a comma ',' if name punning;\n  * a closing brace '}' if no more fields.\n"
    | 459 | 480 ->
        "Ill-formed arrow function.\nAt this point, if the return type is complete, an arrow '=>' is\nexpected.\n"
    | 320 | 421 | 423 | 425 | 427 | 429 | 431 | 433 | 435 | 437 | 439 ->
        "Ill-formed assigment.\nAt this point, the right-hand side is expected as an expression.\n"
    | 261 ->
        "Ill-formed namespace selection.\nAt this point, one of the following is expected:\n  * a namespace name;\n  * a string denoting a constructor;\n  * a record or array.\n"
    | 11 ->
        "Ill-formed field selection.\nAt this point, a field name is expected.\n"
    | 7 | 9 ->
        "Ill-formed field selection.\nAt this point, a closing bracket ']' is expected.\n"
    | 6 ->
        "Ill-formed field selection.\nAt this point, one of the following is expected:\n  * an integer denoting the field,\n  * a string denoting the field.\n"
    | 244 | 246 ->
        "Ill-formed contract from a class.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 243 ->
        "Ill-formed contract from a class.\nAt this point, a class name is expected.\n"
    | 242 ->
        "Ill-formed contract from a class.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 475 | 449 | 460 | 481 | 456 | 478 | 241 | 290 ->
        "Ill-formed arrow function.\nAt this point, one of the following is expected:\n  * the body as a non-record expression (use parentheses otherwise);\n  * a block of statements starting with an opening brace '{'.\n"
    | 474 | 448 | 240 | 289 ->
        "Ill-formed arrow function.\nAt this point, an arrow '=>' is expected.\n"
    | 239 | 287 | 288 ->
        "Ill-formed arrow function.\nAt this point, one of the following is expected:\n  * an opening parenthesis '(' optionally followed by parameters;\n  * a single parameter (variable).\n"
    | 1141 | 1145 ->
        "Ill-formed function expression.\nAt this point, if the return type is complete, a block of statements\nis expected to start with an opening brace '{'.\n"
    | 452 | 454 ->
        "Ill-formed function.\nAt this point, a type (without parentheses) is expected.\n"
    | 451 | 477 ->
        "Ill-formed arrow function.\nAt this point, one of the following is expected:\n  * a colon ':' followed by the return type;\n  * an arrow '=>' followed by the body.\n"
    | 223 | 1144 ->
        "Ill-formed function expression.\nAt this point, one of the following is expected:\n  * a colon ':' followed by the return type;\n  * a block of statements starting with an opening brace '{'.\n"
    | 221 ->
        "Ill-formed function expression.\nAt this point, an opening parenthesis '(' is expected.\n"
    | 218 ->
        "Ill-formed function.\nAt this point, one of the following is expected:\n  * another parameter;\n  * a closing parenthesis ')' otherwise.\n"
    | 217 ->
        "Ill-formed function.\nAt this point, if the parameter is complete, one of the following is\nexpected:\n  * a comma ',' followed by another parameter;\n  * a closing parenthesis ')' if no more parameters.\n"
    | 215 ->
        "Ill-formed function.\nAt this point, a closing parenthesis ')' is expected.\n"
    | 98 ->
        "Ill-formed function parameter.\nAt this point, one of the following is expected:\n  * a comma ',' followed by another parameter;\n  * a colon ':' followed by the type of the parameter;\n  * a closing parenthesis ')' if no more parameters.\n"
    | 63 ->
        "Ill-formed function.\nAt this point, one of the following is expected:\n  * the first parameter (variable);\n  * a closing parenthesis ')' if no parameters.\n"
    | 62 ->
        "Ill-formed function expression.\nAt this point, one of the following is expected:\n  * an opening parenthesis '(' optionally followed by parameters;\n  * an opening chevron '<' optionally followed by type parameters.\n"
    | 56 ->
        "Ill-formed record update.\nAt this point, the record to update is expected.\n"
    | 53 ->
        "Ill-formed record or record update.\nAt this point, one of the following is expected:\n  * the first field of a record;\n  * a rest expression ('...') denoting the record being updated.\n"
    | 52 ->
        "Ill-formed array expression.\nAt this point, the first element is expected.\n"
    | 32 ->
        "Ill-formed decrement.\nAt this point, the decremented variable is expected.\n"
    | 552 | 94 ->
        "Ill-formed array pattern.\nAt this point, one of the following is expected:\n  * a pattern matching an element;\n  * a closing bracket ']' if no more elements.\n"
    | 551 | 93 ->
        "Ill-formed array pattern.\nAt this point, one of following is expected:\n  * a comma ',' followed by another element pattern;\n  * a closing bracket ']' if no more elements.\n"
    | 543 | 85 ->
        "Ill-formed array pattern.\nAt this point, a pattern matching the rest of the array is expected.\n"
    | 510 | 70 ->
        "Ill-formed record pattern.\nAt this point, one of the following is expected:\n  * a field pattern;\n  * a closing brace '}' if no more fields.\n"
    | 509 | 69 ->
        "Ill-formed record pattern.\nAt this point, one of the following is expected:\n  * a comma ',';\n  * a closing brace '}' if no more fields.\n"
    | 512 | 73 ->
        "Ill-formed record pattern.\nAt this point, a pattern matching the field is expected.\n"
    | 511 | 72 ->
        "Ill-formed record pattern.\nAt this point, one of the following is expected:\n  * a colon ':' followed by a pattern matching the field;\n  * a comma ',';\n  * a closing brace '}' if no more fields.\n"
    | 506 | 66 ->
        "Ill-formed record pattern.\nAt this point, a pattern matching the first field is expected.\n"
    | 505 | 65 ->
        "Ill-formed array pattern.\nAt this point, a pattern matching the first element is expected.\n"
    | 30 ->
        "Ill-formed pattern matching.\nAt this point, the matched expression is expected.\n"
    | 36 ->
        "Ill-formed parenthesised expression.\nAt this point, an expression is expected.\n"
    | 25 ->
        "Ill-formed increment.\nAt this point, the incremented variable is expected.\n"
    | 2 ->
        "Ill-formed while-loop.\nAt this point, the invariant is expected as a boolean expression.\n"
    | 1 | 976 | 972 | 970 ->
        "Ill-formed while-loop.\nAt this point, the invariant between parentheses is expected.\n"
    | 224 ->
        "Ill-formed block of statements.\nAt this point, a statement is expected.\n"
    | 497 ->
        "Ill-formed namespace declaration.\nAt this point, one of the following is expected:\n  * the keyword 'implements' followed by an interface;\n  * a block of statements starting with an opening brace '{'.\n"
    | 494 ->
        "Ill-formed namespace declaration.\nAt this point, a namespace name is expected.\n"
    | 232 ->
        "Ill-formed generic type declaration.\nAt this point, if the type parameters are complete, the assignment\nsymbol '=' is expected, followed by a type.\n"
    | 99 ->
        "Ill-formed type annotation.\nAt this point, a type is expected.\n"
    | 111 ->
        "Ill-formed selection in a namespace.\nAt this point, a namespace name is expected.\n"
    | 230 | 233 ->
        "Ill-formed generic type declaration.\nAt this point, a type is expected.\n"
    | 42 ->
        "Ill-formed generic declaration.\nAt this point, one of the following is expected:\n  * another type parameter (variable);\n  * a closing chevron '>' if there are no more parameters.\n"
    | 41 ->
        "Ill-formed generic declaration.\nAt this point, one of the following is expected:\n  * a comma ',' followed by another type parameter (variable);\n  * a closing chevron '>' if there are no more parameters.\n"
    | 37 ->
        "Ill-formed generic declaration.\nAt this point, a type parameter is expected as a variable.\n"
    | 229 ->
        "Ill-formed type declaration.\nAt this point, one of the following is expected:\n  * the assignment symbol '=' followed by a type;\n  * type parameters (variables) between chevrons ('<', '>') if the\n    type is generic.\n"
    | 225 ->
        "Ill-formed type declaration.\nAt this point, a new type name is expected.\n"
    | 0 ->
        "Ill-formed contract.\nAt this point, a top-level declaration is expected.\n"
    | _ ->
        raise Not_found
