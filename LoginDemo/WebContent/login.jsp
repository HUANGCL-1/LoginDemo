<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登入</title>
<style>

h1{
	color:pink;
	font-family: 'Amatic SC', cursive;
	<link href="https://fonts.googleapis.com/css2?family=Amatic+SC&display=swap" rel="stylesheet">

}
form{
background-color: brown;
height: 600px;
width: 600px;
border: 1px rgb(189, 137, 137) solid;

}
td{

font-family: Microsoft JhengHei;
	
}

</style>


</head>
<body>
<div align="center">

<form action="login" method="post">
<h1>WELCOME</h1>
<table>
<h3>${message}</h3>
<h3>${smessage}</h3>

<tr><td>手機:</td><td><input type="text" name="mobile" ></td></tr>
<tr><td>密碼:</td><td><input type="text" name="password" ></td></tr>
<tr><td></td><td><center>
<input type="submit" name="Login" value="確認"><input type="button" value="註冊" onclick="location.href='memberRegistration.jsp'"></center></td></tr>

</table>


</form>
</div>





</body>
</html>