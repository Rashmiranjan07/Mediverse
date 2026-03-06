<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Dashboard | Mediverse</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
	margin: 0;
}

/* Dashboard Section */
.dashboard-section {
	padding: 60px 20px;
}

/* Cream Container */
.dashboard-container {
	background: #f7f0e6;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
}

/* Title */
.dashboard-title {
	text-align: center;
	font-size: 30px;
	font-weight: 700;
	color: #1f3c88;
	margin-bottom: 30px;
}

/* Cards */
.my-card {
	background: #ffffff;
	border-radius: 14px;
	padding: 30px;
	text-align: center;
	box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
	transition: 0.3s;
}

.my-card:hover {
	transform: translateY(-5px);
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
}

/* Icons */
.card-icon {
	font-size: 40px;
	color: #e21b23;
	margin-bottom: 10px;
}

/* Text */
.card-title {
	font-size: 20px;
	font-weight: 600;
	color: #1f3c88;
}

.card-count {
	font-size: 26px;
	font-weight: 700;
	color: #e21b23;
}

/* Messages */
.success-msg {
	color: green;
	text-align: center;
	font-weight: 500;
}

.error-msg {
	color: red;
	text-align: center;
	font-weight: 500;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>

	<%
	/* Session Check */
	Object adminObj = session.getAttribute("adminObj");

	if (adminObj == null) {
		response.sendRedirect("../adminlogin.jsp");
		return;
	}
	%>

	<div class="container dashboard-section">

		<div class="dashboard-container">

			<p class="dashboard-title">Admin Dashboard</p>

			<%
			/* Success Message */
			String successMsg = (String) session.getAttribute("successMsg");

			if (successMsg != null) {
			%>

			<p class="success-msg"><%=successMsg%></p>

			<%
			session.removeAttribute("successMsg");
			}
			%>


			<%
			/* Error Message */
			String errorMsg = (String) session.getAttribute("errorMsg");

			if (errorMsg != null) {
			%>

			<p class="error-msg"><%=errorMsg%></p>

			<%
			session.removeAttribute("errorMsg");
			}
			%>


			<%
			DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());

			int totalNumberOfDoctor = docDAO.countTotalDoctor();
			int totalNumberOfUser = docDAO.countTotalUser();
			int totalNumberOfAppointment = docDAO.countTotalAppointment();
			%>


			<div class="row g-4 justify-content-center">


				<div class="col-md-4">

					<div class="my-card">

						<div class="card-icon">
							<i class="fa-solid fa-user-doctor"></i>
						</div>

						<p class="card-title">Doctor</p>

						<p class="card-count">
							<%=totalNumberOfDoctor%>
						</p>

					</div>

				</div>



				<div class="col-md-4">

					<div class="my-card">

						<div class="card-icon">
							<i class="fas fa-user-circle"></i>
						</div>

						<p class="card-title">User</p>

						<p class="card-count">
							<%=totalNumberOfUser%>
						</p>

					</div>

				</div>



				<div class="col-md-4">

					<div class="my-card">

						<div class="card-icon">
							<i class="fa-solid fa-calendar-check"></i>
						</div>

						<p class="card-title">Total Appointment</p>

						<p class="card-count">
							<%=totalNumberOfAppointment%>
						</p>

					</div>

				</div>


			</div>

		</div>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>
</html>