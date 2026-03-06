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
<title>Doctor Dashboard | Mediverse</title>

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
	margin: 0;
}

/* Main Mediverse Container */
.mediverse-container {
	max-width: 900px;
	margin: 40px auto;
	background: #f7f0e6;
	border-radius: 10px;
	padding: 40px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
}

/* Title */
.dashboard-title {
	text-align: center;
	font-size: 30px;
	font-weight: 700;
	color: #1f3c88;
	margin-bottom: 35px;
}

/* Cards */
.dashboard-card {
	background: white;
	border-radius: 12px;
	padding: 30px;
	text-align: center;
	box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
	transition: 0.3s;
}

.dashboard-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 10px 22px rgba(0, 0, 0, 0.25);
}

/* Icon */
.dashboard-icon {
	color: #1f3c88;
	margin-bottom: 12px;
}

/* Text */
.dashboard-text {
	font-size: 18px;
	font-weight: 600;
	color: #1f3c88;
	margin-bottom: 8px;
}

/* Number */
.dashboard-number {
	font-size: 28px;
	font-weight: 700;
	color: #e21b23;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>

	<!-- check is doctor login or not -->
	<%
	if (session.getAttribute("doctorObj") == null) {
		response.sendRedirect("doctor_login.jsp");
		return;
	}
	%>

	<%
	DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
	int totalNumberOfDoctor = docDAO.countTotalDoctor();

	Doctor currentLoginDoctor = (Doctor) session.getAttribute("doctorObj");
	%>

	<div class="mediverse-container">

		<div class="dashboard-title">Doctor Dashboard</div>

		<div class="row justify-content-center g-4">

			<!-- Doctor Count -->
			<div class="col-md-6">

				<div class="dashboard-card">

					<div class="dashboard-icon">
						<i class="fa-solid fa-user-doctor fa-3x"></i>
					</div>

					<div class="dashboard-text">Doctor</div>

					<div class="dashboard-number">
						<%=totalNumberOfDoctor%>
					</div>

				</div>

			</div>

			<!-- Appointment Count -->
			<div class="col-md-6">

				<div class="dashboard-card">

					<div class="dashboard-icon">
						<i class="fa-solid fa-calendar-check fa-3x"></i>
					</div>

					<div class="dashboard-text">Total Appointment</div>

					<div class="dashboard-number">
						<%=docDAO.countTotalAppointmentByDoctorId(currentLoginDoctor.getId())%>
					</div>

				</div>

			</div>

		</div>

	</div>

</body>
</html>