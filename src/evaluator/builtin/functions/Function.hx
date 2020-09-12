package evaluator.builtin.functions;

import object.Object;

class Function {

    final evaluator:Evaluator;

    public function new(evaluator:Evaluator) {
        this.evaluator = evaluator;
    }

    function returnValue(value:Object = null) {
        evaluator.stack.add(value);

        evaluator.callStack.pop();
    }

    public function execute() { }
}