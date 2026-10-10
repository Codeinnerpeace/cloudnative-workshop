// A tiny web server. It answers every request with a greeting
// plus the hostname and Node.js version it is running on.
const http = require('http');
const os = require('os');

const PORT = 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end(`Hello from my-app! Host: ${os.hostname()} | Node: ${process.version}\n`);
});

server.listen(PORT, () => console.log(`my-app listening on port ${PORT}`));
