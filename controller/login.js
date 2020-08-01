//variable declare
var express = require('express');
var mysql = require('mysql');
var router = express.Router();

//get view of studentlogin
router.get('/', function(req, res){
	res.render('student/studentlogin');
});

//databaseconnection
router.post('/', function(req, res){

	var connection = mysql.createConnection({
	  host     : 'localhost',
	  user     : 'root',
	  password : '',
	  database : 'sch_mngr'
	});
	 
	connection.connect(function(err) {
	  if (err) {
	    console.error('error connecting: ' + err.stack);
	    return;
	  }
	  console.log('connected as id ' + connection.threadId);
	});

	var sql = "select * from student where email='"+req.body.email+"' and password='"+req.body.password+"'";
	console.log("var sql");
	connection.query(sql, function(error, results){
		console.log("ssssssssssss");
		//if(results[0].email == req.body.email && results[0].password == req.body.password){
		if(results.length>0){
			console.log("goru");
			req.session.user = req.body.email;
			req.session.name = req.body.s_name;
			req.session.image = req.body.image;
			req.session.sid = req.body.s_id;
			res.redirect('/stdash');
		}
		else{
			console.log("hash");
			//res.send('invalid username or password');
			req.session.destroy();
                return res.redirect('/login');
		}
	});

	connection.end(function(err){
		console.log('connection end...');
	});
	
});

module.exports = router;

