// import ballerina/io;
import ballerina/http;
import ballerina/log;

# Prints `Hello World`.

service hello on new http:Listener(9090) {


resource function sendResponse(http:Caller caller, http:Request req)

{
    var result = caller->respond("Testing API");

    if (result is error) {
        log:printError("Error sending response");
    }
}

}

// public function main() {
//     io:println("Hello World!");
// }
