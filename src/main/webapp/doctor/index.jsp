<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Dashboard</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	width: 600px;
	margin: 80px auto;
	text-align: center;
}

.card {
	background: white;
	padding: 20px;
	margin: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px 1px maroon;
}

h2 {
	color: maroon;
}

.number {
	font-size: 22px;
	font-weight: bold;
	color: green;
}
</style>

</head>
<body>

<!-- Redirect if doctor not logged in -->
<c:if test="${empty doctorObj}">
	<c:redirect url="doctor_login.jsp"/>
</c:if>

<%
DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
int totalDoctor = docDAO.countTotalDoctor();

Doctor currentDoctor = (Doctor) session.getAttribute("doctorObj");
int totalAppointment = docDAO.countTotalAppointmentByDoctorId(currentDoctor.getId());
%>

<div class="container">

	<h2>Doctor Dashboard</h2>

	<div class="card">
		<p>Total Doctors</p>
		<p class="number"><%= totalDoctor %></p>
	</div>

	<div class="card">
		<p>Your Total Appointments</p>
		<p class="number"><%= totalAppointment %></p>
	</div>

</div>

</body>
</html>