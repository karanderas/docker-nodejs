my_http = require("http");
my_http.createServer(function(request,response) {
	console.log("received Get request");
	response.writeHeader(200, {"Content-Type": "text/plain"});
	response.write("Hello");
	response.end();
}).listen(8080);
console.log("Server Running on 8080");
