<%
    String successMsg = (String) session.getAttribute("successMsg");
    String errorMsg = (String) session.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>
</head>
<body>

<h2>Add Doctor</h2>

<hr>

<!-- Success Message -->
<%
if(successMsg != null){
%>
<p style="color:green;"><%= successMsg %></p>
<%
session.removeAttribute("successMsg");
}
%>

<!-- Error Message -->
<%
if(errorMsg != null){
%>
<p style="color:red;"><%= errorMsg %></p>
<%
session.removeAttribute("errorMsg");
}
%>

<hr>

<form action="<%= request.getContextPath() %>/addDoctor" method="post">
    <label>Full Name:</label><br>
    <input type="text" name="fullName" required>
    <br><br>

    <label>Date of Birth:</label><br>
    <input type="date" name="dateOfBirth" required>
    <br><br>

    <label>Qualification:</label><br>
    <input type="text" name="qualification" required>
    <br><br>

    <label>Specialist:</label><br>
    <input type="text" name="specialist" required>
    <br><br>

    <label>Email:</label><br>
    <input type="email" name="email" required>
    <br><br>

    <label>Phone:</label><br>
    <input type="text" name="phone" required>
    <br><br>

    <label>Password:</label><br>
    <input type="password" name="password" required>
    <br><br>

    <button type="submit">Register Doctor</button>

</form>

</body>
</html>