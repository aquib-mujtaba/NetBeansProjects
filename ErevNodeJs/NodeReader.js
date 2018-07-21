var http = require('http');
var fs=require('fs');
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    res.write("<html>");
                    res.write("<head>");
                    res.write("</head>");
                    res.write("<body style='background-color: lightblue'>");
                    fs.readFile('NodeData.html',function (err,data)
                    {
                        res.write(data);
                    });
                    fs.readFile('NodeFile.txt',function (err,data)
                    {
                        res.write(data);
                    });
                    res.write("</body>");
                    res.write("</html>");
//                    res.end();
                }
        ).listen(8088);
console.log("Web Server Started at port 8088....");





