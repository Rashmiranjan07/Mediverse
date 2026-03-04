<%@ page import="com.hmsm.entity.Doctor" %>
<%@ page import="com.hmsm.dao.DoctorDAO" %>
<%@ page import="com.hmsm.db.DBConnection" %>

<%
    // Get doctor id from URL
    int id = Integer.parseInt(request.getParameter("id"));

    DoctorDAO dao = new DoctorDAO(DBConnection.getConn());
    Doctor doctor = dao.getDoctorById(id);

    String successMsg = (String) session.getAttribute("successMsg");
    String errorMsg = (String) session.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor</title>
</head>
<body>

<h2>Edit Doctor Details</h2>

<a href="view_doctor.jsp">Back to Doctor List</a>

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

<form action="<%= request.getContextPath() %>/updateDoctor" method="post">

    <label>Full Name:</label><br>
    <input type="text" name="fullName" value="<%= doctor.getFullName() %>" required>
    <br><br>

    <label>Date of Birth:</label><br>
    <input type="date" name="dateOfBirth" value="<%= doctor.getDateOfBirth() %>" required>
    <br><br>

    <label>Qualification:</label><br>
    <input type="text" name="qualification" value="<%= doctor.getQualification() %>" required>
    <br><br>

    <label>Specialist:</label><br>
    <input type="text" name="specialist" value="<%= doctor.getSpecialist() %>" required>
    <br><br>

    <label>Email:</label><br>
    <input type="email" name="email" value="<%= doctor.getEmail() %>" required>
    <br><br>

    <label>Phone:</label><br>
    <input type="text" name="phone" value="<%= doctor.getPhone() %>" required>
    <br><br>

    <label>Password:</label><br>
    <input type="text" name="password" value="<%= doctor.getPassword() %>" required>
    <br><br>

    <!-- Hidden ID -->
    <input type="hidden" name="id" value="<%= doctor.getId() %>">

    <button type="submit">Update Doctor</button>

</form>

</body>
</html>