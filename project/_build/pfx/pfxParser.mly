%{
  open PfxAst

  (* Ocaml code here*)

%}

(**************
 * The tokens *
 **************)


(* enter tokens here, they should begin with %token *)
%token EOF ADD SUB MUL DIV REM POP PUSH SWAP 
%token <int> INT


(******************************
 * Entry points of the parser *
 ******************************)

(* enter your %start clause here *)
%start <PfxAst.program> program

%%

(*************
 * The rules *
 *************)

(* list all rules composing your grammar; obviously your entry point has to be present *)

program: 
 |i=INT EOF { i,[] }
 |i=INT e=expr {i,e}
expr:
 |i=INT e=expr {[Push(i)]@e}
 |PUSH e1=INT e2=expr {[Push(e1)]@e2}
 |ADD e=expr {[Add]@e}
 |SUB e=expr {[Sub]@e}
 |MUL e=expr {[Mul]@e}
 |DIV e=expr {[Div]@e}
 |REM e=expr {[Rem]@e}
 |POP e=expr {[Pop]@e}
 |SWAP e=expr {[Swap]@e}
 |EOF {[]}

%%
