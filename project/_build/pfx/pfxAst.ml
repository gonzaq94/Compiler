type command =  
	| Push of int | Pop | Swap | Add | Sub | Mul | Div | Rem 

type program = int * command list

(* add here all useful functions and types  related to the AST: for instance  string_of_ functions *)

let rec string_of_command = function
  | Push(i) -> "push " ^ (string_of_int i)
  | Pop -> "pop"
  | Swap -> "swap"
  | Add -> "add"
  | Sub -> "sub"
  | Div -> "div"
  | Mul -> "mul"
  | Rem -> "rem"


let string_of_commands cmds = String.concat " " (List.map string_of_command cmds)

open Printf
let string_of_program (args, cmds) =
  sprintf "%i args: %s\n" args (string_of_commands cmds)

