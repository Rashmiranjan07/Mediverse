<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>
    body {
        font-family: Arial;
        background-color: #f2f2f2;
    }
    .container {
        width: 400px;
        margin: 100px auto;
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
        background-color: #2196F3;
        color: white;
        border: none;
        cursor: pointer;
    }
    .error {
        color: red;
    }
</style>

</head>
<body>

<div class="container">

    <h2>User Login</h2>

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

    <form action="UserLogin" method="post">

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Login</button>

    </form>

    <p>Don't have account? <a href="register.jsp">Register Here</a></p>

</div>

</body>
</html>