<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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

	<form:form modelAttribute="user" action="registerProcess" method="post">
		Username:<input type="text" name="Username" required><br><br>
			password:<input type="password" name="password" required><br><br>
			firstname:<input type="text" name="firstname" required><br><br>
			lastname:<input type="text" name="lastname" required><br><br>
			email:<input type="text" name="email" required><br><br>
			address:<input type="text" name="address" required><br><br>
			phone:<input type="text" name="phone" required><br><br>
			<input type="submit" value="Register"><br><br>
			<a href="home.jsp">Home</a><br><br>
			
	</form:form>

</body>
</html>