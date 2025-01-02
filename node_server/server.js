const http = require('http');
const server = http.createServer((req, res) =>{
    //console.log(req);
    //res.statusCode = 500;
    res.write('Hello World');
    res.end('!')
});
port = 3000;
 server.listen(port, ()=>console.log("Server started", port));