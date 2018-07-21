var http = require('http');
var mysql = require('mysql');
var con = mysql.createConnection
(
        {
            host: "localhost",
            user: "root",
            password: "admin"

        }
);
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    con.connect
                            (
                                    function (err)
                                    {
                                        if (err)
                                            throw err;
                                        console.log("Connected...");
                                    }
                            );
                    res.end('Server Connected!');
                }
        ).listen(8088);
console.log("Web Server Started at port 8080....");

