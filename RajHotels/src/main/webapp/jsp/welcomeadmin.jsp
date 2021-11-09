<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<style>
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
	background-color: black;
	overflow: hidden;
	padding-left: 3%;
	margin: 0%;
}

ul.topnav li {
	list-style: none;
	float: left;
}

ul.topnav li.topnav-right {
	float: right;
}

ul.topnav li a {
	display: block;
	text-decoration: none;
	font-size: 16px;
	text-align: center;
	padding: 14px;
	color: rgb(253, 250, 250);
}

ul.topnav li a:hover {
	color: #fff;
	background-color: #0080ff;
}
</style>

</head>
<body>
<nav>

		<ul class="topnav" id="dropdownclick">
			<li class="logopad"><img src="D:\projectWork\logo.jpg"
				class="logo"></li>
			<li class="titlelogo">Raj<span>Hotel</span></li>
			<li class="topnav-right"><a href="home.jsp">Logout</a>|</li>
			<li class="topnav-right"><a href="aboutus.html">About Us</a></li>
			<li class="topnav-right"><a href="home.jsp">Home</a></li>
		</ul>
	</nav>

	<table>
		<tr>
			<td>Welcome ${username}</td>
			
		</tr>
		
	

	<h1 style="text-align: center; color: Green">Welcome to Raj Hotel</h1>
	<br>
	<h4>These are the room services which we provide ! choose your
		Room to Stay</h4>
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/myusers" user="student"
		password="student" />
<p style="text-align:right" > Available - blue</p>
<p style="text-align:right"> Booked - Red</p>
	<sql:query dataSource="${db}" var="rs">  
SELECT * from roomdetails;  
</sql:query>

	<table border="1" width="50%" align="center">
		<tr>
			<th style="color: Green">RoomNumber</th>
			<th style="color: Green">RoomType</th>
			<th style="color: Green">Availability</th>
		</tr>
		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<th><c:out value="${table.roomnumber}" /></th>
				<th><c:out value="${table.roomtype}" /></th>
				<c:choose>
					<c:when test="${table.availability=='Booked'}">
						<th style="color: Red"><c:out value="${table.availability }" /></th>
					</c:when>
					<c:otherwise>
						<th style="color: Blue"><c:out value="${table.availability }" /></th>
					</c:otherwise>
				</c:choose>
				
			</tr>
		</c:forEach>
		
	</table>
<a href="book"><button>Book</button></a><br><br>
<a href="userbooking">MyBookings</a>

	<div class="column" style="background-color: black; text-align: left">
		<ul style="color: white; text-align: left; line-height: 2.2;">
			<h4 style="margin: 0%;">Contact Us</h4>
			<br>
			<h4 style="margin: 0%; font-weight: normal">
				No.1 Gurumoorthy Street, DB Nagar,<br> Madurai-625001,
				TamilNadu, India
			</h4>
			<h4 style="margin: 0%; font-weight: normal">Ph.No.- 8949392919</h4>
			<h4 style="margin: 0%; font-weight: normal">Mail.-
				Rajhotel@gmail.com</h4>
		</ul>



	</div>

	</table>
</body>
</html>