package code;

enum OpCode {
    Constant;
    Add;
    Multiply;
    Pop;
    SetLocal;
    GetLocal;
    Ident;
    Jump;
    JumpNot;
    Equals;
    SmallerThan;
    GreaterThan;
    Subtract;
    Divide;
    Modulo;
    Return;
    Call;
    Negate;
}