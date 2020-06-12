exception Invalid of Source.region * string

val check_module : Ast.module_ -> unit (* raises Invalid *)

type ellipses = NoEllipses | Ellipses
type infer_stack_type = ellipses * Types.value_type option list

val peek : int -> 'a * 'b option list -> 'b option

val check_unop : Ast.unop -> Source.region -> unit

(* val check_memop : context -> 'a Ast.memop -> ('a option -> Types.pack_size option) -> Source.region -> unit *)

val type_cvtop : Source.region -> Ast.cvtop -> Types.value_type * Types.value_type

val check_table_type : Types.table_type -> Source.region -> unit
