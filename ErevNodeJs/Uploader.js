var http = require('http');
var formidable = require('formidable');
var fs = require('fs');
http.createServer
        (
                function (req, res)
                {
                    if (req.url == '/uploder')
                    {
                        var form = formidable.IncomingForm();
                        form.parse(req, function (err, fields, files) {
                            var oldpath = files.uplodespace.path;
                            var newpath = 'C:/Mv/' + files.uplodespace.name
                            fs.rename(oldpath, newpath, function (err)

                            {
                                if (err)
                                    throw err;
                                res.write('File moved Succsessfully......');
                                res.end();
                            });

                        });
                    } else {
                        res.writeHead(200, {'Content-Type': 'text/html'});
                        res.write("<form action='uploder' method='post' enctype='multipart/form-data'>");
                        res.write("<input type='file' name='uplodespace'/>");
                        res.write("<button type='submit'>Uplode Your File</button>");
                        res.write("</form>");
                        res.end();
                    }
                }
        ).listen(8088);
console.log("Web Server Started at port 8088....");
