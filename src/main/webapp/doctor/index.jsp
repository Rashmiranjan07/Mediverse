<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page | Doctor</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* Dashboard Container */
.dashboard-container {
	margin-top: 40px;
}

/* Dashboard Title */
.dashboard-title {
	color: white;
	font-size: 30px;
	font-weight: 700;
	text-align: center;
	margin-bottom: 30px;
}

/* Mediverse Card */
.my-card {
	background: #ffffff;
	border-radius: 18px;
	padding: 30px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
	transition: 0.3s;
}

.my-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.35);
}

/* Icons */
.dashboard-icon {
	color: #1f3c88;
	margin-bottom: 10px;
}

/* Card Text */
.dashboard-text {
	color: #1f3c88;
	font-weight: 700;
	font-size: 20px;
}

.dashboard-number {
	color: #e21b23;
	font-size: 26px;
	font-weight: 700;
}
</style>

</head>
<body>

	<%@include file="navbar.jsp"%>

	<!-- check is doctor is login or not -->
	<%
	if (session.getAttribute("doctorObj") == null) {
		response.sendRedirect("doctor_login.jsp");
		return;
	}
	%>

	<div class="container dashboard-container">

		<p class="dashboard-title">Doctor Dashboard</p>

		<%
		DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
		int totalNumberOfDoctor = docDAO.countTotalDoctor();

		Doctor currentLoginDoctor = (Doctor) session.getAttribute("doctorObj");
		%>

		<div class="row justify-content-center g-4">

			<div class="col-md-4">

				<div class="card my-card text-center">

					<div class="dashboard-icon">
						<i class="fa-solid fa-user-doctor fa-3x"></i>
					</div>

					<p class="dashboard-text">Doctor</p>

					<p class="dashboard-number">
						<%=totalNumberOfDoctor%>
					</p>

				</div>

			</div>

			<div class="col-md-4">

				<div class="card my-card text-center">

					<div class="dashboard-icon">
						<i class="fa-solid fa-calendar-check fa-3x"></i>
					</div>

					<p class="dashboard-text">Total Appointment</p>

					<p class="dashboard-number">
						<%=docDAO.countTotalAppointmentByDoctorId(currentLoginDoctor.getId())%>
					</p>

				</div>

			</div>

		</div>

	</div>

</body>
</html>