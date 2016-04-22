var http = require('http');
var request = require('request');

http.createServer(function (req, res) {
	  res.writeHead(200, {'Content-Type': 'text/plain'});
	  request('http://0.0.0.1:8081', function (err, res) {
	  if (err) return console.error(err.message);
	  console.log(res.body);
	  server.close();
	});
}).listen(4000, '0.0.0.0');

console.log('Server running at http://0.0.0.0:4000/');
