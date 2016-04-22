var http = require('http');
var result;

http.createServer(function (req, res) {

	var req = http.request({
	    host: '0.0.0.0',
	    port: 8081,
	    method: 'GET'
	}, function (res) {
	    res.on('data', function (data) {
	    	result = data.toString();
	    });
	});

  	req.end();
  	res.writeHead(200, {'Content-Type': 'text/plain'});
  	res.end(result);

}).listen(4000, '0.0.0.0');

console.log('Server running at http://0.0.0.0:4000/');