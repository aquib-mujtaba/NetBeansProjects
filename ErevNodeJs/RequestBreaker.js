var http = require('http');
var counter = 0;
var url = require('url');
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    counter = counter + 1;
                    res.write("<html>");
                    res.write("<head>");
                    res.write("</head>");
                    res.write("<body style='background-color: lightblue'>");
                    res.write("<h2> Full Url is :" + req.url + "</h2>");
                    var x=url.parse(req.url,true).query;
                      res.write("<h2>Getting the parts of url</h2>");
                      res.write("<h2>Name is :"+x.FirstName +"</h2>");
                      res.write("<h2>Name is :"+x.LastName +"</h2>");
                    res.write("<h3>Visitor Number " + counter + "</h2>");
                    res.write("</body>");
                    res.write("</html>");
                    res.end();
//            res.end('Hello World!');
                }
        ).listen(8088);
console.log("Web Server Started at port 8088....");





