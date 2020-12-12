from typing import Any, Optional

class Impossible(Exception): ...

class NodeType(type):
    def __new__(cls, name, bases, d): ...

class EvalContext:
    environment = ...  # type: Any
    autoescape = ...  # type: Any
    volatile = ...  # type: bool
    def __init__(self, environment, template_name: Optional[Any] = ...) -> None: ...
    def save(self): ...
    def revert(self, old): ...

def get_eval_context(node, ctx): ...

class Node:
    fields = ...  # type: Any
    attributes = ...  # type: Any
    abstract = ...  # type: bool
    def __init__(self, *fields, **attributes) -> None: ...
    def iter_fields(self, exclude: Optional[Any] = ..., only: Optional[Any] = ...): ...
    def iter_child_nodes(self, exclude: Optional[Any] = ..., only: Optional[Any] = ...): ...
    def find(self, node_type): ...
    def find_all(self, node_type): ...
    def set_ctx(self, ctx): ...
    def set_lineno(self, lineno, override: bool = ...): ...
    def set_environment(self, environment): ...
    def __eq__(self, other): ...
    def __ne__(self, other): ...
    __hash__ = ...  # type: Any

class Stmt(Node):
    abstract = ...  # type: bool

class Helper(Node):
    abstract = ...  # type: bool

class Template(Node):
    fields = ...  # type: Any

class Output(Stmt):
    fields = ...  # type: Any

class Extends(Stmt):
    fields = ...  # type: Any

class For(Stmt):
    fields = ...  # type: Any

class If(Stmt):
    fields = ...  # type: Any

class Macro(Stmt):
    fields = ...  # type: Any

class CallBlock(Stmt):
    fields = ...  # type: Any

class FilterBlock(Stmt):
    fields = ...  # type: Any

class Block(Stmt):
    fields = ...  # type: Any

class Include(Stmt):
    fields = ...  # type: Any

class Import(Stmt):
    fields = ...  # type: Any

class FromImport(Stmt):
    fields = ...  # type: Any

class ExprStmt(Stmt):
    fields = ...  # type: Any

class Assign(Stmt):
    fields = ...  # type: Any

class AssignBlock(Stmt):
    fields = ...  # type: Any

class Expr(Node):
    abstract = ...  # type: bool
    def as_const(self, eval_ctx: Optional[Any] = ...): ...
    def can_assign(self): ...

class BinExpr(Expr):
    fields = ...  # type: Any
    operator = ...  # type: Any
    abstract = ...  # type: bool
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class UnaryExpr(Expr):
    fields = ...  # type: Any
    operator = ...  # type: Any
    abstract = ...  # type: bool
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Name(Expr):
    fields = ...  # type: Any
    def can_assign(self): ...

class Literal(Expr):
    abstract = ...  # type: bool

class Const(Literal):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...
    @classmethod
    def from_untrusted(cls, value, lineno: Optional[Any] = ..., environment: Optional[Any] = ...): ...

class TemplateData(Literal):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Tuple(Literal):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...
    def can_assign(self): ...

class List(Literal):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Dict(Literal):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Pair(Helper):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Keyword(Helper):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class CondExpr(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Filter(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Test(Expr):
    fields = ...  # type: Any

class Call(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Getitem(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...
    def can_assign(self): ...

class Getattr(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...
    def can_assign(self): ...

class Slice(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Concat(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Compare(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Operand(Helper):
    fields = ...  # type: Any

class Mul(BinExpr):
    operator = ...  # type: str

class Div(BinExpr):
    operator = ...  # type: str

class FloorDiv(BinExpr):
    operator = ...  # type: str

class Add(BinExpr):
    operator = ...  # type: str

class Sub(BinExpr):
    operator = ...  # type: str

class Mod(BinExpr):
    operator = ...  # type: str

class Pow(BinExpr):
    operator = ...  # type: str

class And(BinExpr):
    operator = ...  # type: str
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Or(BinExpr):
    operator = ...  # type: str
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class Not(UnaryExpr):
    operator = ...  # type: str

class Neg(UnaryExpr):
    operator = ...  # type: str

class Pos(UnaryExpr):
    operator = ...  # type: str

class EnvironmentAttribute(Expr):
    fields = ...  # type: Any

class ExtensionAttribute(Expr):
    fields = ...  # type: Any

class ImportedName(Expr):
    fields = ...  # type: Any

class InternalName(Expr):
    fields = ...  # type: Any
    def __init__(self) -> None: ...

class MarkSafe(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class MarkSafeIfAutoescape(Expr):
    fields = ...  # type: Any
    def as_const(self, eval_ctx: Optional[Any] = ...): ...

class ContextReference(Expr): ...
class Continue(Stmt): ...
class Break(Stmt): ...

class Scope(Stmt):
    fields = ...  # type: Any

class EvalContextModifier(Stmt):
    fields = ...  # type: Any

class ScopedEvalContextModifier(EvalContextModifier):
    fields = ...  # type: Any
