
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | SWAP
    | SUB
    | REM
    | PUSH
    | POP
    | MUL
    | INT of (
# 15 "pfx/pfxParser.mly"
       (int)
# 17 "pfx/pfxParser.ml"
  )
    | EOF
    | DIV
    | ADD
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState12
  | MenhirState11
  | MenhirState9
  | MenhirState8
  | MenhirState7
  | MenhirState6
  | MenhirState4
  | MenhirState3
  | MenhirState2
  | MenhirState1

# 1 "pfx/pfxParser.mly"
  
  open PfxAst

  (* Ocaml code here*)


# 56 "pfx/pfxParser.ml"

let rec _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (PfxAst.command list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 39 "pfx/pfxParser.mly"
             ([Add]@e)
# 70 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 42 "pfx/pfxParser.mly"
             ([Div]@e)
# 82 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s, (i : (
# 15 "pfx/pfxParser.mly"
       (int)
# 92 "pfx/pfxParser.ml"
        ))) = _menhir_stack in
        let _v : (PfxAst.command list) = 
# 37 "pfx/pfxParser.mly"
               ([Push(i)]@e)
# 97 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 41 "pfx/pfxParser.mly"
             ([Mul]@e)
# 109 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 44 "pfx/pfxParser.mly"
             ([Pop]@e)
# 121 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e2 : (PfxAst.command list)) = _v in
        let ((_menhir_stack, _menhir_s), (e1 : (
# 15 "pfx/pfxParser.mly"
       (int)
# 131 "pfx/pfxParser.ml"
        ))) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 38 "pfx/pfxParser.mly"
                      ([Push(e1)]@e2)
# 137 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 43 "pfx/pfxParser.mly"
             ([Rem]@e)
# 149 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 40 "pfx/pfxParser.mly"
             ([Sub]@e)
# 161 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (PfxAst.command list) = 
# 45 "pfx/pfxParser.mly"
              ([Swap]@e)
# 173 "pfx/pfxParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (e : (PfxAst.command list)) = _v in
        let (_menhir_stack, (i : (
# 15 "pfx/pfxParser.mly"
       (int)
# 183 "pfx/pfxParser.ml"
        ))) = _menhir_stack in
        let _v : (
# 23 "pfx/pfxParser.mly"
       (PfxAst.program)
# 188 "pfx/pfxParser.ml"
        ) = 
# 35 "pfx/pfxParser.mly"
               (i,e)
# 192 "pfx/pfxParser.ml"
         in
        _menhir_goto_program _menhir_env _menhir_stack _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState2 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState1 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (PfxAst.command list) = 
# 46 "pfx/pfxParser.mly"
      ([])
# 246 "pfx/pfxParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DIV ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | EOF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | MUL ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | POP ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | PUSH ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | REM ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SUB ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | SWAP ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState6)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "pfx/pfxParser.mly"
       (int)
# 427 "pfx/pfxParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_goto_program : _menhir_env -> 'ttv_tail -> (
# 23 "pfx/pfxParser.mly"
       (PfxAst.program)
# 458 "pfx/pfxParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (
# 23 "pfx/pfxParser.mly"
       (PfxAst.program)
# 466 "pfx/pfxParser.ml"
    )) = _v in
    Obj.magic _1

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADD ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | DIV ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | EOF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | INT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | MUL ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | POP ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | PUSH ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | REM ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | SUB ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | SWAP ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 23 "pfx/pfxParser.mly"
       (PfxAst.program)
# 539 "pfx/pfxParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | DIV ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState1 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, (i : (
# 15 "pfx/pfxParser.mly"
       (int)
# 570 "pfx/pfxParser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "pfx/pfxParser.mly"
       (PfxAst.program)
# 576 "pfx/pfxParser.ml"
            ) = 
# 34 "pfx/pfxParser.mly"
            ( i,[] )
# 580 "pfx/pfxParser.ml"
             in
            _menhir_goto_program _menhir_env _menhir_stack _v
        | INT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | MUL ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | POP ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | PUSH ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | REM ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | SUB ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | SWAP ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 48 "pfx/pfxParser.mly"
  

# 606 "pfx/pfxParser.ml"

# 219 "/usr/share/menhir/standard.mly"
  


# 612 "pfx/pfxParser.ml"
