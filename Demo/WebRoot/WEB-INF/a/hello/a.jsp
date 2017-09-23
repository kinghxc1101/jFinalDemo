<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=request.getAttribute("aa")%><br>
	<hr>

	<a href="http://localhost/hello/hh">跳转</a>

	<div>
		<form action="/student/hh/a-dsa-wq" method="post">
			<input name="student.user" value="hxc" type="text"/>
			<hr>
			<dir>
				<input type="radio" name="student.sex" value="1" />男&nbsp
				<input type="radio" name="student.sex" value="2" />女
			</dir>
			<button name="onSubmit" type="submit">提交</button>
		</form>

	</div>
	dadasdsa
</body>
</html>