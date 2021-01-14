package std.lib;

import object.ClosureObj;
import object.HashObj;
import object.BuiltInFunctionObj;
import haxe.ds.StringMap;
import vm.VirtualMachine;
import object.Object;

class MemberObject {

    public static final name:String = null;
    final members:StringMap<Object> = new StringMap();
    final vm:VirtualMachine;

    public function new(vm:VirtualMachine) {
        this.vm = vm;
    }

    public function getMembers():HashObj {
        return new HashObj(members, vm);
    }

    function addFunctionMember(memberName:String, parameters:Array<ObjectType>, memberFunction:Array<Object>->Object) {
        members.set(memberName, new ClosureObj(new BuiltInFunctionObj(memberFunction, parameters, vm), vm.currentFrame, vm));
    }

    function callFunctionMember(name:String, parameters:Array<Object>):Object {
        final func = cast(members.get(name), ClosureObj);
        return vm.callFunction(func, parameters);
    }

    function addObjectMember(name:String, object:Object) {
        members.set(name, object);
    }

    function error(message:String) {
        vm.error.error(message);
    }
}