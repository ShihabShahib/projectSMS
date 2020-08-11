var db = require('./db');

module.exports = {
	
	notice: function(user, callback){
		var sql = "SELECT * FROM event;SELECT * FROM notice as n,student as s,subject as sb WHERE s.class_id=n.class_id AND s.section_id=n.section_id AND sb.subject_id=n.subject_id AND s.student_id=? ORDER BY n.noticedate DESC";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	teacher: function(user, callback){
		var sql = "SELECT * FROM teacher";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	profile: function(user, callback){
		var sql = "SELECT * FROM student WHERE student_id=?";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	/*updateprofile: function(user, callback){
		var sql = "UPDATE student SET s_name=?,s_phone=?,s_address=?, image=?WHERE email = ?";
		db.execute(sql, [user.name,user.phone,user.address,user.image, user.email], function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},*/
	routine: function(user, callback){
		var sql = "SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Saturday' ORDER BY R.startingtime ASC;SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Sunday' ORDER BY R.startingtime ASC;SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Monday' ORDER BY R.startingtime ASC;SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Tuesday' ORDER BY R.startingtime ASC;SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Wednessday' ORDER BY R.startingtime ASC;SELECT * FROM student as ST,routine as R WHERE ST.class_id=R.class_id AND ST.section_id=R.section_id AND ST.student_id=? AND R.day='Thursday' ORDER BY R.startingtime ASC;";
		db.getResults(sql,[user,user,user,user,user,user], function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	subject: function(user, callback){
		var sql = "SELECT * FROM teacher as t,student as s,subject as sb WHERE s.class_id=sb.class_id AND t.subject_id=sb.subject_id AND s.student_id=?";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	lostfound: function(user, callback){
		var sql = "SELECT * FROM lostfound ORDER BY lostday DESC";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
	syllabus: function(user, callback){
		var sql = "SELECT * FROM subject as S,student as ST,syllabus as SY WHERE ST.class_id=SY.class_id AND ST.section_id=SY.section_id AND S.subject_id=SY.subject_id AND ST.student_id=?";
		db.getResults(sql,user, function(result){

			if(result.length > 0 ){
				callback(result);
			}else{
				callback([]);
			}
		})
	},
}