var http = require('http');

http.createServer
(
        function (req, res)
        {
            res.writeHead(200, {'Content-Type': 'text/html'});
            
            res.end('Hello World!');
        }
).listen(8088);
console.log("Web Server Started at port 8080....");

