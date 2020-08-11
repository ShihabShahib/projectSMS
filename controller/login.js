//variable declare
var express = require('express');
var User = require.main.require('./model/user');
var router = express.Router();

//get view of studentlogin
router.get('/', function(req, res){
	res.render('student/studentlogin');
});
var user = {};
//login
router.post('/', function(req, res){
    var user = {
		email: req.body.email,
		//password: req.body.password
	};
	User.login(user, function(result){
		if(result != ""){
			req.session.user = result.studentemail;
			req.session.name = result.studentname;
			req.session.image = result.studentimage;
			req.session.sid = result.student_id;
			console.log('going to stdash');
			res.redirect('/student/stdash');

		}else{
			console.log('return from loginjs');
			res.redirect('/login');
		}		
	});
	
});

module.exports = router;

