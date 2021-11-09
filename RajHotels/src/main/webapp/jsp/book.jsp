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

	<form:form modelAttribute="book" action="bookProcess" method="post">
		Roomnumber:<input type="text" name="roomnumber" required><br><br>
			Roomtype:<input type="text" name="roomtype" required><br><br>
			No.of.persons to stay:<input type="text" name="persons" required><br><br>
			Check-in:<input type="date" name="checkin" required><br><br>
			Check-out:<input type="date" name="checkout" required><br><br>
			Username:<input type="text" name="username" required><br><br>
			
			<input type="submit" value="Book"><br><br>
			<a href="home.jsp">Home</a><br><br>
			
	</form:form>

</body>
</html>