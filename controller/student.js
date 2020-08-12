//variable declare
var express = require('express');
var studentdash = require.main.require('./model/studentdash');
var router = express.Router();

var user = {};

router.get('/stdash', function(req, res){

	if(req.session.user != null){
		studentdash.notice(req.session.sid,function(result){
		res.render('student/stdash', {
			name: req.session.name,
            image: req.session.image,
            event: result[0],
            notice: result[1] 
             });
		})
	}else{
			console.log('going from stufentjs');
			res.redirect('/studentlogin');
	}
});

router.get('/teacher', function(req, res){

	if(req.session.user != null){
		studentdash.teacher(user,function(result){
		res.render('student/teacher', {
			name: req.session.name,
            image: req.session.image,
            teacher: result 
             });
		})
	}else{
			console.log('going from stufentjs');
			res.redirect('/studentlogin');
	}
});
router.get('/stprofile', function(req, res){

	if(req.session.user != null){
		studentdash.profile(req.session.sid,function(result){
		res.render('student/stprofile', {
			name: req.session.name,
            image: req.session.image,
            profile: result 
             });
		})
	}else{
			console.log('going from stufentjs');
			res.redirect('/student/stdash');
	}
});
/*router.get('/updateprofile', function(req, res){

	if(req.session.user != null){
		studentdash.profile(req.session.user,function(results){
		res.render('student/updateprofile', {
			name: req.session.name,
            image: req.session.image,
            profile: results 
             });
		})
	}else{
			console.log('going from stufentjs');
			res.redirect('/student/stdash');
	}
});

router.post("/updateprofile", function(req, res){

	var user = {
		name: req.body.name,
		image: req.body.image,
		phone: req.body.phone,
		address: req.body.address,
		id: req.session.sid
	};
	studentdash.updateprofile(user, function(status){

		if(status){
			res.redirect('/student/stprofile');
		}else{
			res.redirect('/student/updateprofile');
		}
	});
});*/

router.get('/routine', function(req, res){

	if(req.session.user != null){
		studentdash.routine(req.session.sid,function(result){
		res.render('student/routine', {
			name: req.session.name,
            image: req.session.image,
            routine1: result[0],
            routine2: result[1],
            routine3: result[2],
            routine4: result[3],
            routine5: result[4],
            routine6: result[5]
            });
		})
	}else{
			res.redirect('/student/stdash');
	}
});
router.get('/subject', function(req, res){

	if(req.session.user != null){
		studentdash.subject(req.session.sid,function(result){
		res.render('student/subject', {
			name: req.session.name,
            image: req.session.image,
            subject: result 
             });
		})
	}else{
			res.redirect('/student/stdash');
	}
});
router.get('/found', function(req, res){

	if(req.session.user != null){
		studentdash.lostfound(req.session.sid,function(result){
		res.render('student/found', {
			name: req.session.name,
            image: req.session.image,
            found: result 
             });
		})
	}else{
			res.redirect('/student/stdash');
	}
});
router.get('/syllabus', function(req, res){

	if(req.session.user != null){
		studentdash.syllabus(req.session.sid,function(result){
		res.render('student/syllabus', {
			name: req.session.name,
            image: req.session.image,
            syllabus: result 
             });
		})
	}else{
			res.redirect('/student/stdash');
	}
});

module.exports = router;