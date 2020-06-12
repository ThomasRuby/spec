open Values
open Instance

exception Link of Source.region * string
exception Trap of Source.region * string
exception Crash of Source.region * string
exception Exhaustion of Source.region * string

val init : Ast.module_ -> extern list -> module_inst (* raises Link, Trap *)
val invoke : func_inst -> value list -> value list (* raises Trap *)

val create_table : module_inst -> Ast.table -> table_inst

val create_memory : module_inst -> Ast.memory -> memory_inst

val create_global : module_inst -> Ast.global -> global_inst

val func_elem : module_inst -> int32 Source.phrase -> Table.index -> Source.region -> Instance.func_inst

val type_ : module_inst -> int32 Source.phrase -> Types.func_type
val block_type : module_inst -> Ast.block_type -> Types.func_type

val global : module_inst -> int32 Source.phrase -> Global.global
val memory : module_inst -> int32 Source.phrase -> Memory.memory
