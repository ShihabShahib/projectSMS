//declare variable
var express = require('express');
var session = require('express-session');
//var cookieparser = require('cookie-parser');
var bodyParser = require('body-parser');
var login  = require('./controller/login');
var student = require('./controller/student');
var upload= require('express-fileupload');
var app    = express();

app.use(upload());
//view engine set, config
app.set('view engine', 'ejs');

app.use('/assets', express.static('assets'));
//app.use('/abc/img', express.static('assets'));



//middleware
app.use(bodyParser.urlencoded({extended: false}));
app.use(session({secret: 'my secret value', saveUninitialized: true, resave: false}));
app.use('/login', login);
app.use('/student',student);

app.get('/', function(req, res){
	res.send("this is index page!<br> <a href='/login'> login</a> ");
});

app.listen(3000, function(){
    console.log('express http server started at 3000....')
});