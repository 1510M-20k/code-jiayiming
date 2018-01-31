<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
//System.out.println("path:"+path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//System.out.println("basePath:"+basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="<%=path %>/bootstrap/js/jquery-3.2.1.js"></script>
<script type="text/javascript" src="<%=path %>/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<table class="table table-bordered">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>sex</td>
			<td>age</td>
			<td>likes</td>
		</tr>
		<c:forEach items="${list }" var="a">
			<tr>
				<td>${a.id }</td>
				<td>${a.name }</td>
				<td>${a.sex }</td>
				<td>${a.age }</td>
				<td>${a.likes }</td>
			</tr>
		</c:forEach>
	</table>
	<table>
		<tr>
			<td>共${page.count }条记录,当前${page.current }/${page.pageCount }页</td>
			<td>
				<ul class="pagination">
				    <li><a href="#">&laquo;</a></li>
				    <li><a href="<%=path %>/userlist.do?currentPage=1">1</a></li>
				    <li><a href="<%=path %>/userlist.do?currentPage=2">2</a></li>
				    <li><a href="<%=path %>/userlist.do?currentPage=3">3</a></li>
				    <li><a href="<%=path %>/userlist.do?currentPage=4">4</a></li>
				    <li><a href="<%=path %>/userlist.do?currentPage=5">5</a></li>
				    <li><a href="#">&raquo;</a></li>
				</ul>
			</td>
		</tr>
	</table>
</body>
</html>