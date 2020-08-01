//declare variable
var express = require('express');
var session = require('express-session');
//var cookieparser = require('cookie-parser');
var bodyParser = require('body-parser');
var login  = require('./controller/login');
var stdash = require('./controller/stdash');
var app    = express();

//view engine set, config
app.set('view engine', 'ejs');

//app.use('/abc', express.static('assets'));
//app.use('/abc/img', express.static('assets'));



//middleware
app.use(bodyParser.urlencoded({extended: false}));
app.use(session({secret: 'my secret value', saveUninitialized: true, resave: false}));
app.use('/login', login);
app.use('/stdash',stdash);

app.get('/', function(req, res){
	res.send("this is index page!<br> <a href='/login'> login</a> ");
});

app.listen(3000, function(){
    console.log('express http server started at 3000....')
});