var http = require('http');
var events = require('events');
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    var eventHandler = function () 
                    {
                        console.log('The event has been  triggered');
                    }
                  var eventEmitter = new events.EventEmitter();
                  eventEmitter.on('Hlo',eventHandler);
                  eventEmitter.emit('Hlo');
                    res.end();
                }
        ).listen(8088);
console.log("Web Server Started at port 8088....");
