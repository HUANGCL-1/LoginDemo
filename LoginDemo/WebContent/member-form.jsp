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
			style="background-color: yellow">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> 會員 </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${member != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${member == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${member != null}">
            			修改
            		</c:if>
						<c:if test="${member == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>

				<c:if test="${member != null}">
					<input type="hidden" name="id" value="<c:out value='${member.mobile}' />" />
				</c:if>
				<fieldset class="form-group">
					<label>member mobile</label> <input type="text"
						value="<c:out value='${member.mobile}' />" class="form-control"
						name="mobile" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>member password</label> <input type="password"
						value="<c:out value='${member.password}' />" class="form-control"
						name="password" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>member name</label> <input type="text"
						value="<c:out value='${member.name}' />" class="form-control"
						name="name">
				</fieldset>

				<fieldset class="form-group">
					<label>member nickname</label> <input type="text"
						value="<c:out value='${member.nickname}' />" class="form-control"
						name="nickname">
				</fieldset>

				<fieldset class="form-group">
					<label>member gender</label> <input type="text"
						value="<c:out value='${member.gender}' />" class="form-control"
						name="gender">
				</fieldset>
				<fieldset class="form-group">
					<label>member birthday</label> <input type="date"
						value="<c:out value='${member.birthday}' />" class="form-control"
						name="birthday">
				</fieldset>
				<fieldset class="form-group">
					<label>member email</label> <input type="text"
						value="<c:out value='${member.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>member address</label> <input type="text"
						value="<c:out value='${member.address}' />" class="form-control"
						name="address">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>