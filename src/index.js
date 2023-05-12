/*const express = require("express");
const app = express();

const PORT = 8080;
const HOST = 'localhost';
const server_start = new Date().toLocaleString();

app.get('/', (req, res) => {
  const ipAddress = req.socket.remoteAddress;
  var time = new Date();
  res.send(`IP: ${ipAddress}  <br> ${time}`)
});

app.listen(PORT, () => {
  console.log(`Uruchomiono: ${server_start}`)
  console.log("Autor: Kacper Papiński");
  console.log(`Running on http://${HOST}:${PORT}`);
});*/

const http = require("http");
const hostname = "localhost";
const port = 8000;
const server_start = new Date().toLocaleString();
var ip = require('ip');
const server = http.createServer(function (req, res) {
  res.writeHead(200, { "Content-Type": "text/plain" });
  const ipAddress = req.socket.remoteAddress;
  var time = new Date();
  res.end(`IP: ${ip.address()}\n${time}`);
});

server.listen(port, hostname, function () {
  console.log(`Server running at http://${hostname}:${port}/`);
  console.log(`Uruchomiono: ${server_start}`)
  console.log("Autor: Kacper Papiński");
});