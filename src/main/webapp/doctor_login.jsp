<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.login-container {
	width: 350px;
	margin: 100px auto;
	background-color: white;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px 1px maroon;
}

h2 {
	text-align: center;
	color: maroon;
}

input[type="email"],
input[type="password"] {
	width: 100%;
	padding: 8px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	width: 100%;
	padding: 8px;
	background-color: maroon;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: darkred;
}

.message-success {
	color: green;
	text-align: center;
}

.message-error {
	color: red;
	text-align: center;
}
</style>

</head>
<body>

<div class="login-container">

	<h2>Doctor Login</h2>

	<!-- Success Message -->
	<%
String successMsg = (String) session.getAttribute("successMsg");
if(successMsg != null){
%>
	<p style="color:green; text-align:center;"><%= successMsg %></p>
<%
	session.removeAttribute("successMsg");
}
%>

<%
String errorMsg = (String) session.getAttribute("errorMsg");
if(errorMsg != null){
%>
	<p style="color:red; text-align:center;"><%= errorMsg %></p>
<%
	session.removeAttribute("errorMsg");
}
%>

	<form action="doctorLogin" method="post">
		<label>Email:</label>
		<input type="email" name="email" placeholder="Enter Email" required>

		<label>Password:</label>
		<input type="password" name="password" placeholder="Enter Password" required>

		<button type="submit">Login</button>
	</form>

</div>

</body>
</html>