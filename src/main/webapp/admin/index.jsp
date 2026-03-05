<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Admin Dashboard</title>

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

/* dashboard section */
.dashboard-section {
	padding: 60px 20px;
}

/* title */
.dashboard-title {
	text-align: center;
	font-size: 32px;
	font-weight: 700;
	color: #ffffff;
	margin-bottom: 40px;
}

/* cards */
.my-card {
	background: #ffffff;
	border: none;
	border-radius: 20px;
	padding: 30px;
	text-align: center;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
	transition: 0.3s;
}

.my-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 20px 45px rgba(0, 0, 0, 0.3);
}

/* icons */
.card-icon {
	font-size: 45px;
	color: #e21b23;
	margin-bottom: 15px;
}

/* text */
.card-title {
	font-size: 20px;
	font-weight: 600;
	color: #1f3c88;
}

.card-count {
	font-size: 28px;
	font-weight: 700;
	color: #e21b23;
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

		<p class="dashboard-title">Admin Dashboard</p>


		<%
		/* Success Message */

		String successMsg = (String) session.getAttribute("successMsg");

		if (successMsg != null) {
		%>

		<p class="text-center text-success fs-5">
			<%=successMsg%>
		</p>

		<%
		session.removeAttribute("successMsg");
		}
		%>



		<%
		/* Error Message */

		String errorMsg = (String) session.getAttribute("errorMsg");

		if (errorMsg != null) {
		%>

		<p class="text-center text-danger fs-5">
			<%=errorMsg%>
		</p>

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



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>
</html>