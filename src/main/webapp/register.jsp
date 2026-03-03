<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>
    body {
        font-family: Arial;
        background-color: #f2f2f2;
    }
    .container {
        width: 400px;
        margin: 80px auto;
        padding: 20px;
        background: white;
        border-radius: 5px;
        box-shadow: 0 0 10px #ccc;
    }
    input {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    .success {
        color: green;
    }
    .error {
        color: red;
    }
</style>

</head>
<body>

<div class="container">

    <h2>User Registration</h2>

    <!-- Success Message -->
    <%
        String successMsg = (String) session.getAttribute("successMsg");
        if (successMsg != null) {
    %>
        <p class="success"><%= successMsg %></p>
    <%
            session.removeAttribute("successMsg");
        }
    %>

    <!-- Error Message -->
    <%
        String errorMsg = (String) session.getAttribute("errorMsg");
        if (errorMsg != null) {
    %>
        <p class="error"><%= errorMsg %></p>
    <%
            session.removeAttribute("errorMsg");
        }
    %>

    <form action="UserRegisterServlet" method="post">
        <label>Full Name</label>
        <input type="text" name="fullName" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="user_login.jsp">Login Here</a></p>

</div>

</body>
</html>