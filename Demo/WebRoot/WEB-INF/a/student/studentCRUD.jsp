<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 	String path = request.getContextPath();
	// 	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
	// 			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <base href=" <%=basePath%>">  --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/js/jquery-3.2.0.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class=" col-lg-12">
				<form action="" method="post">
					<div  ><a href="/student/add" >增加</a></div>
					<table class="table">
					<thead>
						<tr>
							<td align="center">序号</td>
							<td align="center">用户</td>
							<td align="center" width="">性别</td>
							<td align="center">删除</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${studentList}" var="student">
							<tr>
								<td align="center">${student.id}</td>
								<td align="center">${student.user}</td>
								<c:if test="${student.sex==1}">
									<td align="center">男</td>
								</c:if>
								<c:if test="${student.sex==2}">
									<td align="center">女</td>
								</c:if>
								<td align="center"><a
									href="/student/deleteByID/${student.id}">删除</a></td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
	<%-- <div align="center">
		<form action="/student/hh/a-dsa-wq" method="post">
			<a href="/student/add">增加</a>
			<table border="1">
				<tr>
					<td>序号</td>
					<td>用户</td>
					<td>性别</td>
					<td>删除</td>

				</tr>
				<c:forEach items="${studentList}" var="student">
					<tr>
						<td align="center">${student.id}</td>
						<td align="center">${student.user}</td>
						<c:if test="${student.sex==1}">
							<td align="center">男</td>
						</c:if>
						<c:if test="${student.sex==2}">
							<td align="center">女</td>
						</c:if>
						<td align="center"><a
							href="/student/deleteByID/${student.id}">删除</a></td>
					</tr>
				</c:forEach>

			</table>
		</form>

	</div> --%>
</body>
</html>