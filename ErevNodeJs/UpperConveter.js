var http = require('http');
var uc=require('upper-case');
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                  res.write(uc("<h2>This line has to be converted to upper case</h2>"));
                    res.end();
                }
        ).listen(8088);
console.log("Web Server Started at port 8088....");
