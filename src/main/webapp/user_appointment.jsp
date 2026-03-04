<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page import="com.hmsm.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.hmsm.dao.DoctorDAO" %>
<%@ page import="com.hmsm.entity.Doctor" %>
<%@ page import="com.hmsm.db.DBConnection" %>

<%
    User user = (User) session.getAttribute("userObj");

    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Appointment</title>

<style>
body {
    font-family: Arial;
    background-color: #f4f4f4;
}
.container {
    width: 500px;
    margin: 40px auto;
    background: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px #ccc;
}
input, select, textarea {
    width: 100%;
    padding: 8px;
    margin: 6px 0;
}
button {
    width: 100%;
    padding: 10px;
    background-color: #28a745;
    color: white;
    border: none;
}
.success { color: green; }
.error { color: red; }
</style>

</head>
<body>

<div class="container">

<h2>Book Appointment</h2>

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

<form action="addAppointment" method="post">

    <!-- Hidden User ID -->
    <input type="hidden" name="userId" value="<%= user.getId() %>">

    <label>Full Name</label>
    <input type="text" name="fullName" value="<%= user.getFullName() %>" required>

    <label>Gender</label>
    <select name="gender" required>
        <option value="">--Select--</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
    </select>

    <label>Age</label>
    <input type="number" name="age" required>

    <label>Appointment Date</label>
    <input type="date" name="appointmentDate" required>

    <label>Email</label>
    <input type="email" name="email" value="<%= user.getEmail() %>" required>

    <label>Phone</label>
    <input type="text" name="phone" required>

    <label>Diseases</label>
    <input type="text" name="diseases" required>

   <label>Doctor</label><br>

<select name="doctorNameSelect" required>
    <option value="">--- Select Doctor ---</option>

<%
    DoctorDAO doctorDAO = new DoctorDAO(DBConnection.getConn());
    List<Doctor> listOfDoctor = doctorDAO.getAllDoctor();

    for(Doctor d : listOfDoctor){
%>

    <!-- value = doctor id -->
    <option value="<%= d.getId() %>">
        <%= d.getFullName() %> (<%= d.getSpecialist() %>)
    </option>

<%
    }
%>

</select>

        <!-- Example Static Doctors 
        <option value="1">Dr. John (Cardiologist)</option>
        <option value="2">Dr. Smith (Dentist)</option>
        <option value="3">Dr. Raj (Neurologist)</option>-->

    </select>

    <label>Address</label>
    <textarea name="address" required></textarea>

    <button type="submit">Book Appointment</button>

</form>

</div>

</body>
</html>