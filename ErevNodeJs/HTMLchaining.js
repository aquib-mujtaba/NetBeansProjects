var http = require('http');

http.createServer
(
        function (req, res)
        {
            res.writeHead(200, {'Content-Type': 'text/html'});
            res.write("<html>");
            res.write("<body style='background-color: blue'>");
            res.write("<marquee behavior='alternate'>");
            res.write("<h1>Html genrated from Node Js </h1>");
              res.write("</marquee>");
            res.write("</body>");
            res.write("</html>");
            res.end();
//            res.end('Hello World!');
        }
).listen(8088);
console.log("Web Server Started at port 8080....");

