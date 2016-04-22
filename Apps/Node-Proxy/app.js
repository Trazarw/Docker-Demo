var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});

  http.get({hostname: 'localhost',port: 80, path: '/', agent: false}, 
  	(res) => {
  		res.end('Ve Bilbao Rocks\n');
  	})});
}).listen(4000, '0.0.0.0');

console.log('Server running at http://0.0.0.0:4000/');
