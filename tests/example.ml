(* AUTO-GENERATED by c2ocaml plugin 1.0 *)

open Lsee;;
open Utils;;
open State;;
open Driver;;
open Blocks;;
open Actions;;
open GccTypes;;
open Procedures;;
open Expressions;;

let main = 
(*-------------------------------------------------------- 
  // working_directory: /target/tests/tests
  // source_file_name: control-flow/2.c
  // base_name: 2.c
  // name: example
  // fid: 0
  ---------------------------------------------------------*)

  let _typeSELF = GccType.pointer(GccType.self)
  in let type0x7f668cd1c5e8 = 
    GccType.integer(true, 32, 32, Z.of_string "-2147483648", Z.of_string "2147483647")
  in let type0x7f668cd1cf18 = 
    GccType.void
  in let type0x7f668cd240a8 = 
    GccType.pointer(type0x7f668cd1cf18)
  in let type0x7f668cd1c738 = 
    GccType.integer(true, 64, 64, Z.of_string "-9223372036854775808", Z.of_string "9223372036854775807")
  in let expr0x7f668cd0f990 = 
    Expr.ssa("_1", 1, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668cd21078 = 
    Expr.s_int_cst(type0x7f668cd1c5e8, Z.of_string "0")
  in let expr0x7f668cd0f9d8 = 
    Expr.ssa("_2", 2, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668cd0fab0 = 
    Expr.ssa("_5", 5, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668e0dbea0 = 
    Expr.variable_decl(type0x7f668cd240a8, VarDecl.make("B", 64, 64))
  in let expr0x7f668cd0ff30 = 
    Expr.ssa("B_20", 20, expr0x7f668e0dbea0)
  in let expr0x7f668cd210f0 = 
    Expr.u_int_cst(type0x7f668cd240a8, Z.of_string "0")
  in let expr0x7f668cd0fb88 = 
    Expr.ssa("_8", 8, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668cd0fa20 = 
    Expr.ssa("_3", 3, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668cd0fa68 = 
    Expr.ssa("_4", 4, Expr.nothing(type0x7f668cd1c738))
  in let expr0x7f668e0dbe10 = 
    Expr.variable_decl(type0x7f668cd240a8, VarDecl.make("A", 64, 64))
  in let expr0x7f668cd0fe58 = 
    Expr.ssa("A_17", 17, expr0x7f668e0dbe10)
  in let expr0x7f668cd0faf8 = 
    Expr.ssa("_6", 6, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0x7f668cd0fb40 = 
    Expr.ssa("_7", 7, Expr.nothing(type0x7f668cd1c738))
  in let expr0x7f668cd0fbd0 = 
    Expr.ssa("_9", 9, Expr.nothing(type0x7f668cd1c5e8))
  in let expr0 = 
    Expr.nothing(GccType.none)
  in let call0x7f668ce4a180 = Expr.call(
    type0x7f668cd1c5e8,
    "strcasecmp", [|
  |])
  in let call0x7f668ce4a300 = Expr.call(
    type0x7f668cd1c5e8,
    "addReplyHelp", [|
  |])
  in let call0x7f668ce4a400 = Expr.call(
    type0x7f668cd1c5e8,
    "strcasecmp", [|
  |])
  in let call0x7f668ce4a580 = Expr.call(
    type0x7f668cd1c5e8,
    "dictGetIterator", [|
  |])
  in let call0x7f668ce4a600 = Expr.call(
    type0x7f668cd1c5e8,
    "addReplyDeferredLen", [|
  |])
  in let call0x7f668ce4d090 = Expr.call(
    type0x7f668cd1c5e8,
    "dictGetKey", [|
      (Expr.parameter("p1", 0, expr0x7f668cd0ff30));
  |])
  in let call0x7f668ce4a680 = Expr.call(
    type0x7f668cd1c5e8,
    "stringmatchlen", [|
  |])
  in let call0x7f668ce4a800 = Expr.call(
    type0x7f668cd1c5e8,
    "addReplyBulk", [|
  |])
  in let call0x7f668ce4d120 = Expr.call(
    type0x7f668cd1c5e8,
    "dictNext", [|
      (Expr.parameter("p1", 0, expr0x7f668cd0fe58));
  |])
  in let call0x7f668ce4d1b0 = Expr.call(
    type0x7f668cd1c5e8,
    "dictReleaseIterator", [|
      (Expr.parameter("p1", 0, expr0x7f668cd0fe58));
  |])
  in let call0x7f668ce4a900 = Expr.call(
    type0x7f668cd1c5e8,
    "strcasecmp", [|
  |])
  in let call0x7f668ce4aa80 = Expr.call(
    type0x7f668cd1c5e8,
    "listLength", [|
  |])
  in let call0x7f668ce4d240 = Expr.call(
    type0x7f668cd1c5e8,
    "addReplyLongLong", [|
      (Expr.parameter("p1", 0, expr0x7f668cd0fbd0));
  |])
  in let call0x7f668ce4ab80 = Expr.call(
    type0x7f668cd1c5e8,
    "addReplySubcommandSyntaxError", [|
  |])
  in let block_0 = 
    let step_0_0 = Action.start 
    in Block.block (
      0,
      [| step_0_0 |],
      [||],
      [| "<ENTRY>" |]
    )
  in let block_2 = 
    let step_2_1 = 
      Action.call(call0x7f668ce4a180)
    in let step_2_2 = 
      Action.assign(expr0x7f668cd0f990, call0x7f668ce4a180)
    in Block.block(
      2,
      [|
        step_2_1;
        step_2_2;
      |],
      [|
        ("strcasecmp", 1);
      |],
      [|
        "# VUSE <.MEM_12(D)>\n_1 = strcasecmp ();";
        "<CAPTURES RETURN>";
      |]
    )
  in let block_3 = 
    let step_3_3 = 
      Action.assume(2, Expr.beq(GccType.boolean, expr0x7f668cd0f990, expr0x7f668cd21078))
    in let step_3_4 = 
      Action.call(call0x7f668ce4a300)
    in Block.block(
      3,
      [|
        step_3_3;
        step_3_4;
      |],
      [|
        ("addReplyHelp", 1);
      |],
      [|
        "assume TRUE (_1 == 0)";
        "# .MEM_25 = VDEF <.MEM_12(D)>\naddReplyHelp ();";
      |]
    )
  in let block_4 = 
    let step_4_5 = 
      Action.assume(2, Expr.bneq(GccType.boolean, expr0x7f668cd0f990, expr0x7f668cd21078))
    in let step_4_6 = 
      Action.call(call0x7f668ce4a400)
    in let step_4_7 = 
      Action.assign(expr0x7f668cd0f9d8, call0x7f668ce4a400)
    in Block.block(
      4,
      [|
        step_4_5;
        step_4_6;
        step_4_7;
      |],
      [|
        ("strcasecmp", 1);
      |],
      [|
        "assume FALSE (_1 == 0)";
        "# VUSE <.MEM_12(D)>\n_2 = strcasecmp ();";
        "<CAPTURES RETURN>";
      |]
    )
  in let block_5 = 
    let step_5_8 = 
      Action.assume(4, Expr.beq(GccType.boolean, expr0x7f668cd0f9d8, expr0x7f668cd21078))
    in let step_5_9 = 
      Action.call(call0x7f668ce4a580)
    in let step_5_10 = 
      Action.assign(expr0x7f668cd0fa20, call0x7f668ce4a580)
    in let step_5_11 = 
      Action.assign(expr0x7f668cd0fa68, expr0x7f668cd0fa20)
    in let step_5_12 = 
      Action.assign(expr0x7f668cd0fe58, expr0x7f668cd0fa68)
    in let step_5_13 = 
      Action.call(call0x7f668ce4a600)
    in Block.block(
      5,
      [|
        step_5_8;
        step_5_9;
        step_5_10;
        step_5_11;
        step_5_12;
        step_5_13;
      |],
      [|
        ("addReplyDeferredLen", 1);
        ("dictGetIterator", 1);
      |],
      [|
        "assume TRUE (_2 == 0)";
        "# .MEM_16 = VDEF <.MEM_12(D)>\n_3 = dictGetIterator ();";
        "<CAPTURES RETURN>";
        "_4 = (long int) _3;";
        "A_17 = (void *) _4;";
        "# .MEM_18 = VDEF <.MEM_16>\naddReplyDeferredLen ();";
      |]
    )
  in let block_6 = 
    let step_6_14 = 
      Action.assume(8, Expr.bneq(GccType.boolean, expr0x7f668cd0ff30, expr0x7f668cd210f0))
    in let step_6_15 = 
      Action.call(call0x7f668ce4d090)
    in let step_6_16 = 
      Action.call(call0x7f668ce4a680)
    in let step_6_17 = 
      Action.assign(expr0x7f668cd0fab0, call0x7f668ce4a680)
    in Block.block(
      6,
      [|
        step_6_14;
        step_6_15;
        step_6_16;
        step_6_17;
      |],
      [|
        ("dictGetKey", 1);
        ("stringmatchlen", 1);
      |],
      [|
        "assume TRUE (B_20 != 0B)";
        "# .MEM_22 = VDEF <.MEM_19>\ndictGetKey (B_20);";
        "# .MEM_23 = VDEF <.MEM_22>\n_5 = stringmatchlen ();";
        "<CAPTURES RETURN>";
      |]
    )
  in let block_7 = 
    let step_7_18 = 
      Action.assume(6, Expr.bneq(GccType.boolean, expr0x7f668cd0fab0, expr0x7f668cd21078))
    in let step_7_19 = 
      Action.call(call0x7f668ce4a800)
    in Block.block(
      7,
      [|
        step_7_18;
        step_7_19;
      |],
      [|
        ("addReplyBulk", 1);
      |],
      [|
        "assume TRUE (_5 != 0)";
        "# .MEM_24 = VDEF <.MEM_23>\naddReplyBulk ();";
      |]
    )
  in let block_8 = 
    let step_8_20 = 
      Action.assume(6, Expr.beq(GccType.boolean, expr0x7f668cd0fab0, expr0x7f668cd21078))
    in let step_8_21 = 
      Action.call(call0x7f668ce4d120)
    in let step_8_22 = 
      Action.assign(expr0x7f668cd0faf8, call0x7f668ce4d120)
    in let step_8_23 = 
      Action.assign(expr0x7f668cd0fb40, expr0x7f668cd0faf8)
    in let step_8_24 = 
      Action.assign(expr0x7f668cd0ff30, expr0x7f668cd0fb40)
    in Block.block(
      8,
      [|
        step_8_20;
        step_8_21;
        step_8_22;
        step_8_23;
        step_8_24;
      |],
      [|
        ("dictNext", 1);
      |],
      [|
        "assume FALSE (_5 != 0)";
        "# .MEM_19 = VDEF <.MEM_10>\n_6 = dictNext (A_17);";
        "<CAPTURES RETURN>";
        "_7 = (long int) _6;";
        "B_20 = (void *) _7;";
      |]
    )
  in let block_9 = 
    let step_9_25 = 
      Action.assume(8, Expr.beq(GccType.boolean, expr0x7f668cd0ff30, expr0x7f668cd210f0))
    in let step_9_26 = 
      Action.call(call0x7f668ce4d1b0)
    in Block.block(
      9,
      [|
        step_9_25;
        step_9_26;
      |],
      [|
        ("dictReleaseIterator", 1);
      |],
      [|
        "assume FALSE (B_20 != 0B)";
        "# .MEM_21 = VDEF <.MEM_19>\ndictReleaseIterator (A_17);";
      |]
    )
  in let block_10 = 
    let step_10_27 = 
      Action.assume(4, Expr.bneq(GccType.boolean, expr0x7f668cd0f9d8, expr0x7f668cd21078))
    in let step_10_28 = 
      Action.call(call0x7f668ce4a900)
    in let step_10_29 = 
      Action.assign(expr0x7f668cd0fb88, call0x7f668ce4a900)
    in Block.block(
      10,
      [|
        step_10_27;
        step_10_28;
        step_10_29;
      |],
      [|
        ("strcasecmp", 1);
      |],
      [|
        "assume FALSE (_2 == 0)";
        "# VUSE <.MEM_12(D)>\n_8 = strcasecmp ();";
        "<CAPTURES RETURN>";
      |]
    )
  in let block_11 = 
    let step_11_30 = 
      Action.assume(10, Expr.beq(GccType.boolean, expr0x7f668cd0fb88, expr0x7f668cd21078))
    in let step_11_31 = 
      Action.call(call0x7f668ce4aa80)
    in let step_11_32 = 
      Action.assign(expr0x7f668cd0fbd0, call0x7f668ce4aa80)
    in let step_11_33 = 
      Action.call(call0x7f668ce4d240)
    in Block.block(
      11,
      [|
        step_11_30;
        step_11_31;
        step_11_32;
        step_11_33;
      |],
      [|
        ("addReplyLongLong", 1);
        ("listLength", 1);
      |],
      [|
        "assume TRUE (_8 == 0)";
        "# .MEM_14 = VDEF <.MEM_12(D)>\n_9 = listLength ();";
        "<CAPTURES RETURN>";
        "# .MEM_15 = VDEF <.MEM_14>\naddReplyLongLong (_9);";
      |]
    )
  in let block_12 = 
    let step_12_34 = 
      Action.assume(10, Expr.bneq(GccType.boolean, expr0x7f668cd0fb88, expr0x7f668cd21078))
    in let step_12_35 = 
      Action.call(call0x7f668ce4ab80)
    in Block.block(
      12,
      [|
        step_12_34;
        step_12_35;
      |],
      [|
        ("addReplySubcommandSyntaxError", 1);
      |],
      [|
        "assume FALSE (_8 == 0)";
        "# .MEM_13 = VDEF <.MEM_12(D)>\naddReplySubcommandSyntaxError ();";
      |]
    )
  in let block_13 = 
    let step_13_36 = 
      Action.return(expr0)
    in Block.block(
      13,
      [|
        step_13_36;
      |],
      [|
        (* no calls *)
      |],
      [|
        "# VUSE <.MEM_11>\nreturn;";
      |]
    )
  in let block_1 = 
    let step_0_37 = Action.finish 
    in Block.block (
      1,
      [| step_0_37 |],
      [||],
      [| "<EXIT>" |]
    )
  in let cfg = Cfg.cfg (
    14,
    Z.of_string "6",
    [|
      Cfg.vert ("[0]", block_0, [|
          Cfg.edge (2, "[2]", block_2, Z.of_string "0", Z.of_string "5");
        |]
      );
      Cfg.vert ("[1]", block_1, [|
        |]
      );
      Cfg.vert ("[2]", block_2, [|
          Cfg.edge (3, "[3]", block_3, Z.of_string "0", Z.of_string "0");
          Cfg.edge (4, "[4]", block_4, Z.of_string "1", Z.of_string "5");
        |]
      );
      Cfg.vert ("[3]", block_3, [|
          Cfg.edge (10, "[13]", block_13, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[4]", block_4, [|
          Cfg.edge (5, "[5]", block_5, Z.of_string "0", Z.of_string "2");
          Cfg.edge (7, "[10]", block_10, Z.of_string "3", Z.of_string "4");
        |]
      );
      Cfg.vert ("[5]", block_5, [|
          Cfg.edge (13, "[0 | 8]", block_8, Z.of_string "0", Z.of_string "2");
        |]
      );
      Cfg.vert ("[9]", block_9, [|
          Cfg.edge (10, "[13]", block_13, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[10]", block_10, [|
          Cfg.edge (8, "[11]", block_11, Z.of_string "0", Z.of_string "0");
          Cfg.edge (9, "[12]", block_12, Z.of_string "1", Z.of_string "1");
        |]
      );
      Cfg.vert ("[11]", block_11, [|
          Cfg.edge (10, "[13]", block_13, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[12]", block_12, [|
          Cfg.edge (10, "[13]", block_13, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[13]", block_13, [|
          Cfg.edge (1, "[1]", block_1, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[0 | 6]", block_6, [|
          Cfg.edge (12, "[0 | 7]", block_7, Z.of_string "0", Z.of_string "0");
          Cfg.edge (14, "[1 | 8]", block_8, Z.of_string "1", Z.of_string "1");
        |]
      );
      Cfg.vert ("[0 | 7]", block_7, [|
          Cfg.edge (14, "[1 | 8]", block_8, Z.of_string "0", Z.of_string "0");
        |]
      );
      Cfg.vert ("[0 | 8]", block_8, [|
          Cfg.edge (11, "[0 | 6]", block_6, Z.of_string "0", Z.of_string "1");
          Cfg.edge (6, "[9]", block_9, Z.of_string "2", Z.of_string "2");
        |]
      );
      Cfg.vert ("[1 | 8]", block_8, [|
          Cfg.edge (6, "[9]", block_9, Z.of_string "0", Z.of_string "0");
        |]
      );
    |]
  )
  in Proc.proc(
   "example",
    0,
   "/target/tests/tests",
   "control-flow/2.c",
   "2.c",
    cfg
  )
in Driver.execute main;;
