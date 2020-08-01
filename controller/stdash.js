//variable declare
var express = require('express');
//var mysql = require('mysql');
//var session = require('express-session');
var router = express.Router();

router.get('/', function(req, res){

	if(req.session.user != null){
		res.render('student/stdash',{session:req.session.user});
	}else{
		res.redirect('/studentlogin');
	}
});


module.exports = router;