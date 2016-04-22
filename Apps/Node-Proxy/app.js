var http = require('http');

http.createServer(function (req, res) {

	var req = http.request({
	    host: '192.168.5.8',
	    port: 3128,
	    method: 'GET',
	    path: '/'
	}, function (res) {
	    res.on('data', function (data) {
	        console.log(data.toString());
	    });
	});
  req.end();
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Ve Bilbao Rocks\n');
}).listen(4000, '0.0.0.0');

console.log('Server running at http://0.0.0.0:4000/');