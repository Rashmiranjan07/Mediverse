<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>

<h2>Admin Login</h2>

<!-- Success Message -->
<%
String successMsg = (String) session.getAttribute("successMsg");
if(successMsg != null){
%>
<p style="color:green;"><%= successMsg %></p>
<%
session.removeAttribute("successMsg");
}
%>

<!-- Error Message -->
<%
String errorMsg = (String) session.getAttribute("errorMsg");
if(errorMsg != null){
%>
<p style="color:red;"><%= errorMsg %></p>
<%
session.removeAttribute("errorMsg");
}
%>

<form action="adminLogin" method="post">

    Email: <br>
    <input type="email" name="email" required><br><br>

    Password: <br>
    <input type="password" name="password" required><br><br>

    <button type="submit">Login</button>

</form>

</body>
</html>