

var http = require('http');
var mysql = require('mysql');
var con = mysql.createConnection
        (
                {
                    host: "localhost",
                    user: "root",
                    password: "admin",
                    database: "erevsql"

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
                                        var sql = "CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))"
                                        con.query
                                                (
                                                        sql,
                                                        function (err, result)
                                                        {
                                                            if (err)
                                                                throw err;
                                                            console.log("Table Created Base Created");
                                                        }
                                                );
                                    }
                            );
                    res.end('Server Connected!');
                }
        ).listen(8088);
console.log("Web Server Started at port 8080....");

