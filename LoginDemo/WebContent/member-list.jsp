<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>會員</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> User
					Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>mobile</th>
						<th>password</th>
						<th>name</th>
						<th>nickname</th>
						<th>gender</th>
						<th>birthday</th>
						<th>email</th>
						<th>address</th>
						
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="member" items="${listMember}">

						<tr>
							<td><c:out value="${member.mobile}" /></td>
							<td><c:out value="${member.password}" /></td>
							<td><c:out value="${member.name}" /></td>
							<td><c:out value="${member.nickname}" /></td>
							<td><c:out value="${member.gender}" /></td>
							<td><c:out value="${member.birthday}" /></td>
							<td><c:out value="${member.email}" /></td>
							<td><c:out value="${member.address}" /></td>
							
							
							<td><a href="edit?mobile=<c:out value='${member.mobile}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?mobile=<c:out value='${member.mobile}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>