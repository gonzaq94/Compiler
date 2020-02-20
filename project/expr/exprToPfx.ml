open ExprAst
open PfxAst

let string_to_command = function
  | "+" -> Add
  | "-" -> Sub
  | "*" -> Mul
  | "/" -> Div
  | "%" -> Rem

let rec generate = function
  | Const c -> [Push(c)]
  | Binop(op,e1,e2) -> (generate e2)@(generate e2)@[(string_to_command (BinOp.string_of op))]
  | Uminus e -> (generate (Binop (BinOp.Bsub ,e ,Const(0))))
  | Var v -> failwith "Not yet supported"
