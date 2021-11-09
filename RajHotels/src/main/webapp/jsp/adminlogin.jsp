<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>

<style type="text/css">
body {
	background-color: lightyellow;
	background-size: contain;
}

@charset "ISO-8859-1";

@charset "ISO-8859-1";

nav, header, footer {
	display: block;
}

body {
	line-height: 1;
	margin: 0%;
}

span {
	color: whitesmoke;
	font-family: Georgia, 'Times New Roman', Times, serif;
	letter-spacing: 2px;
	font-size: 25px;
	word-spacing: 2px;
}

.titlelogo {
	margin: 0%;
	font-family: Georgia, 'Times New Roman', Times, serif;
	font-size: 25px;
	letter-spacing: 2px;
	color: orange;
	padding: 1% 0% 1% 2%;
}

.logo {
	border-radius: 50%;
	padding: 15%;
}

.logopad {
	padding-left: 15px;
}

nav {
	width: 100%;
	margin: 0%;
}

nav ul {
	background-color: lightgreen;
	overflow: hidden;
	padding-left: 3%;
	margin: 0%;
}

ul.topnav li {
	list-style: none;
	float: left;
}

</style>

</head>
<body>
<nav>

		<ul class="topnav" id="dropdownclick">
			<li class="logopad"><img src="D:\projectWork\logo.jpg"
				class="logo"></li>
			<li class="titlelogo">Raj<span>Hotel</span></li>

		</ul>
	</nav>
	<br>
	<br>

	<form:form modelAttribute="adminlogin" action="adminloginProcess" method="post">
	<a href="home.jsp">Home</a>
		<h4>Login here..</h4>
			Username:<input type="text" name="Username" required><br><br>
			Password:<input type="password" name="password" required><br><br>
			<input type="submit" value="Login"><br><br>
			
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>

</body>
</html>