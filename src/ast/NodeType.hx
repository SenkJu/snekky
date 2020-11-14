package ast;

enum NodeType {
    File;
    Block;
    Expression;
    Statement;
    Variable;
    VariableAssign;
    VariableAssignOp;
    DestructureArray;
    DestructureHash;
    Ident;
    FunctionCall;

    Add;
    Subtract;
    Multiply;
    Divide;
    Modulo;
    Or;
    And;
    LessThan;
    LessThanOrEqual;
    GreaterThan;
    GreaterThanOrEqual;
    ConcatString;
    Equals;
    NotEquals;
    Negate;
    Not;
    BitAnd;
    BitOr;
    BitXor;
    BitNot;
    BitShiftLeft;
    BitShiftRight;

    Float;
    String;
    Function;
    Boolean;
    Array;
    Hash;
    Null;

    Return;
    Break;
    If;
    While;
    For;
    When;
    Range;
    Regex;

    Index;
    IndexAssign;
}