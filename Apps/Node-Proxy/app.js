var http = require('http');
var request = require('sync-request');

http.createServer(function (req, res) {
  var res = request('GET', '0.0.0.0:8081');
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Ve Bilbao Rocks\n');
}).listen(4000, '0.0.0.0');

console.log('Server running at http://0.0.0.0:4000/');
