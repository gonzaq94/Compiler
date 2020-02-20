

let args = ref[]


let parse_eval file = 
   print_string("File "^file^" la concha de tu madre all boys");
   try
      let input_file = open_in file in
      let lexbuf = Lexing.from_channel input_file in
      let count = PfxLexer.token lexbuf;
      close_in (input_file)
   with Sys_error s ->
      print_endline ("Can't find file '" ^ file ^ "'")

