var express = require("express");
var app = express();
var mysql = require("mysql");
var url = require("url");
var multer = require ("multer");
var querystring  = require("querystring");
var server = require("http").createServer(app);
//var io = require("socket.io")(server);
//实例化express
//app.use(express.static('public'));
app.use(express.static('userlogo'));
var connection = mysql.createConnection({
		host:"192.168.0.109",
		user:"wy",
		password:"123456",
		database:"oto"
	});
connection.connect();
console.log("start service..")
var bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());