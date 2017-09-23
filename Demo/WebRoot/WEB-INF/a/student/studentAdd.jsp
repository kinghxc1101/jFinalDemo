<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/student/addStudent">
		<input name="student.user" type="text"> <input name="student.sex" type="radio"
			value=1>男 <input name="student.sex" type="radio" value=2>女 <input
			name="button" type="submit" value="提交" >
	</form>
</body>
</html>
