package std.lib.namespaces;

import object.ClosureObj;
import object.BooleanObj;
import object.NumberObj;
import object.StringObj;
import object.NullObj;
import sys.Http;
import object.Object;
import evaluator.Evaluator;

private class HttpClient extends MemberObject {

    public function new(evaluator:Evaluator, url:String) {
        super(evaluator);

        final client = new Http(url);

        client.onData = function(data) {
            final newEvaluator = new Evaluator(evaluator.fileData);
        
            final func = cast(members.get("onData"), ClosureObj);
            newEvaluator.callFunction(func, [new StringObj(data, evaluator)]);
        };

        client.onStatus = function(status) {
            final newEvaluator = new Evaluator(evaluator.fileData);
        
            final func = cast(members.get("onStatus"), ClosureObj);
            newEvaluator.callFunction(func, [new NumberObj(status, evaluator)]);
        };
        
        addFunctionMember("onData", [ObjectType.String], function(parameters) {
            return new NullObj(evaluator);
        });

        addFunctionMember("onStatus", [ObjectType.Number], function(parameters) {
            return new NullObj(evaluator);
        });

        addFunctionMember("request", [ObjectType.Boolean], function(p) {
            final post = cast(p[0], BooleanObj).value;
            
            client.request(post);

            return new NullObj(evaluator);
        });

        addFunctionMember("addHeader", [ObjectType.String, ObjectType.String], function(p) {
            final header = cast(p[0], StringObj).value;
            final value = cast(p[1], StringObj).value;

            client.addHeader(header, value);

            return new NullObj(evaluator);
        });

        addFunctionMember("addParameter", [ObjectType.String, ObjectType.String], function(p) {
            final name = cast(p[0], StringObj).value;
            final value = cast(p[0], StringObj).value;

            client.addParameter(name, value);

            return new NullObj(evaluator); 
        });

        addFunctionMember("setPostData", [ObjectType.String], function(p) {
            final data = cast(p[0], StringObj).value;

            client.setPostData(data);

            return new NullObj(evaluator);
        });
    }
}

class HttpNamespace extends MemberObject {

    public static final name = "Http";

    public function new(evaluator:Evaluator) {
        super(evaluator);

        addFunctionMember("Client", [ObjectType.String], function(p) {
            final url = cast(p[0], StringObj).value;

            return new HttpClient(evaluator, url).getMembers();
        });
    }
}