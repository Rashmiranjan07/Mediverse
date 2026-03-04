<%@ page import="java.util.List" %>
<%@ page import="com.hmsm.entity.Doctor" %>
<%@ page import="com.hmsm.dao.DoctorDAO" %>
<%@ page import="com.hmsm.db.DBConnection" %>

<%
    String successMsg = (String) session.getAttribute("successMsg");
    String errorMsg = (String) session.getAttribute("errorMsg");

    DoctorDAO dao = new DoctorDAO(DBConnection.getConn());
    List<Doctor> doctorList = dao.getAllDoctor();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Doctors</title>
</head>
<body>

<h2>List of Doctors</h2>

<a href="doctor.jsp">Add New Doctor</a>
<br><br>

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

<table border="1" cellpadding="8">
<tr>
    <th>Full Name</th>
    <th>DOB</th>
    <th>Qualification</th>
    <th>Specialist</th>
    <th>Email</th>
    <th>Phone</th>
    <th colspan="2">Action</th>
</tr>

<%
for(Doctor d : doctorList){
%>

<tr>
    <td><%= d.getFullName() %></td>
    <td><%= d.getDateOfBirth() %></td>
    <td><%= d.getQualification() %></td>
    <td><%= d.getSpecialist() %></td>
    <td><%= d.getEmail() %></td>
    <td><%= d.getPhone() %></td>

    <td>
    <a href="edit_doctor.jsp?id=<%= d.getId() %>">Edit</a>
</td>

    <td>
        <a href="<%= request.getContextPath() %>/deleteDoctor?id=<%= d.getId() %>">
            Delete
        </a>
    </td>
</tr>

<%
}
%>

</table>

</body>
</html>