var http = require('http');
var nodemailer = require('nodemailer');
var transporter = nodemailer.createTransport(
        {
            service: 'gmail',
            auth: {
                user: 'aquib4me@gmail.com',
                pass: '183314392'
            }
        });

var mailOptions = {
    from: 'aquib4me@gmail.com',
    to: 'ghulam.aquib@gmail.com',
    subject: 'Sending Email using Node.js',
    text: 'That was easy!'
};
http.createServer
        (
                function (req, res)
                {
                    res.writeHead(200, {'Content-Type': 'text/html'});
                    transporter.sendMail(mailOptions, function (error, info) {
                        if (error)
                        {
                            console.log(error);
                        } else
                        {
                            console.log('Email sent: ' + info.response);
                        }
                    });
                    res.end('Mail Sent..........');
                }
        ).listen(8088);
console.log("Web Server Started at port 8080....");

