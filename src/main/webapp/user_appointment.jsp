
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

if(user == null){
response.sendRedirect("login.jsp");
return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Book Appointment - Mediverse</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
margin:0;
font-family:'Segoe UI',sans-serif;
background:#132440;
}

/* navbar */

.navbar{
background:#ffffff;
padding:16px 30px;
border-radius:18px;
box-shadow:0 10px 30px rgba(0,0,0,0.15);
}

/* page section */

.appointment-section{
min-height:90vh;
display:flex;
align-items:center;
justify-content:center;
padding:40px 15px;
}

/* form card */

.appointment-box{
width:100%;
max-width:650px;
background:white;
padding:35px;
border-radius:25px;
box-shadow:0 15px 40px rgba(0,0,0,0.15);
}

/* title */

.appointment-title{
text-align:center;
margin-bottom:25px;
}

.appointment-title h3{
color:#1f3c88;
font-weight:700;
}

.appointment-title span{
color:#e21b23;
font-weight:700;
}

/* form */

.form-control, select, textarea{
border-radius:10px;
padding:10px;
margin-top:6px;
}

/* button */

.book-btn{
width:100%;
padding:12px;
border:none;
border-radius:10px;
background:#e21b23;
color:white;
font-weight:600;
margin-top:15px;
}

.book-btn:hover{
background:#c5161c;
}

/* messages */

.success{
color:green;
text-align:center;
}

.error{
color:red;
text-align:center;
}

</style>

</head>

<body>

<!-- Navbar -->

<div class="container mt-3">

<nav class="navbar navbar-expand-lg">

<a class="navbar-brand" href="#" style="line-height:1;">
<span style="font-size:22px;font-weight:700;color:#1f3c88;">Mediverse</span><br>
<span style="font-size:14px;font-weight:600;color:#e21b23;">User Portal</span>
</a>

<div class="ms-auto">
<a href="index2.jsp" class="btn btn-outline-primary me-2">Home</a>
<a href="logout" class="btn btn-danger">Logout</a>
</div>

</nav>

</div>


<!-- Appointment Section -->

<div class="appointment-section">

<div class="appointment-box">

<div class="appointment-title">
<h3>Book <span>Appointment</span></h3>
</div>


<!-- Success Message -->

<%
String successMsg=(String)session.getAttribute("successMsg");
if(successMsg!=null){
%>

<p class="success"><%= successMsg %></p>

<%
session.removeAttribute("successMsg");
}
%>


<!-- Error Message -->

<%
String errorMsg=(String)session.getAttribute("errorMsg");
if(errorMsg!=null){
%>

<p class="error"><%= errorMsg %></p>

<%
session.removeAttribute("errorMsg");
}
%>


<form action="addAppointment" method="post">

<input type="hidden" name="userId" value="<%= user.getId() %>">

<label>Full Name</label>
<input type="text" name="fullName" class="form-control"
value="<%= user.getFullName() %>" required>


<label>Gender</label>
<select name="gender" class="form-control" required>
<option value="">--Select--</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>


<label>Age</label>
<input type="number" name="age" class="form-control" required>


<label>Appointment Date</label>
<input type="date" name="appointmentDate" class="form-control" required>


<label>Email</label>
<input type="email" name="email" class="form-control"
value="<%= user.getEmail() %>" required>


<label>Phone</label>
<input type="text" name="phone" class="form-control" required>


<label>Diseases</label>
<input type="text" name="diseases" class="form-control" required>


<label>Doctor</label>

<select name="doctorNameSelect" class="form-control" required>

<option value="">--- Select Doctor ---</option>

<%

DoctorDAO doctorDAO=new DoctorDAO(DBConnection.getConn());
List<Doctor> listOfDoctor=doctorDAO.getAllDoctor();

for(Doctor d:listOfDoctor){
%>

<option value="<%= d.getId() %>">
<%= d.getFullName() %> (<%= d.getSpecialist() %>)
</option>

<%
}
%>

</select>


<label>Address</label>
<textarea name="address" class="form-control" required></textarea>


<button type="submit" class="book-btn">Book Appointment</button>

</form>

</div>

</div>


<!-- Footer -->

<div style="background:white;text-align:center;padding:15px;font-size:14px;">
© 2026 Mediverse Hospital Management System
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

