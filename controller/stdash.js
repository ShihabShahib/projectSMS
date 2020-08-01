//variable declare
var express = require('express');
var mysql = require('mysql');
var session = require('express-session');
var router = express.Router();

router.get('/', function(req, res){

	if(req.session.user != null){
		console.log("sagol");
		res.render('student/stdash');
	}else{
		console.log("sagol");
		res.redirect('/studentlogin');
	}
});


module.exports = router;