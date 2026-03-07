<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.hmsm.entity.User"%>
<%@ page import="com.hmsm.entity.Appointment"%>
<%@ page import="com.hmsm.entity.Doctor"%>
<%@ page import="java.util.List"%>
<%@ page import="com.hmsm.dao.AppointmentDAO"%>
<%@ page import="com.hmsm.dao.DoctorDAO"%>
<%@ page import="com.hmsm.db.DBConnection"%>

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
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>View Appointment - Mediverse</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* navbar */
.navbar {
	background: #ffffff;
	padding: 16px 30px;
	border-radius: 18px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

/* section */
.appointment-section {
	min-height: 90vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 20px;
}

/* MEDIVERSE CREAM CONTAINER */
.appointment-box {
	width: 85%;
	max-width: 1000px;
	background: #efe7dc;
	padding: 40px;
	border-radius: 22px;
	box-shadow: 0 20px 45px rgba(0, 0, 0, 0.25);
	transition: 0.3s;
}

.appointment-box:hover {
	transform: translateY(-3px);
	box-shadow: 0 25px 55px rgba(0, 0, 0, 0.30);
}

/* title */
.appointment-title {
	text-align: center;
	margin-bottom: 25px;
}

.appointment-title h3 {
	color: #1f3c88;
	font-weight: 700;
}

.appointment-title span {
	color: #e21b23;
	font-weight: 700;
}

/* table */
table {
	background: white;
	border-radius: 10px;
	overflow: hidden;
}

thead {
	background: #1f3c88;
	color: white;
}

th {
	font-weight: 600;
}

tbody tr:hover {
	background: #f6efe6;
	transition: 0.2s;
}

/* status */
.pending {
	background: #ffc107;
	padding: 5px 12px;
	border-radius: 8px;
	font-weight: 600;
}

.done {
	color: green;
	font-weight: 600;
}
</style>

</head>


<body>

	<!-- Navbar -->

	<div class="container mt-3">

		<nav class="navbar navbar-expand-lg">

			<a class="navbar-brand" href="#" style="line-height: 1;"> <span
				style="font-size: 22px; font-weight: 700; color: #1f3c88;">
					Mediverse </span> <br> <span
				style="font-size: 14px; font-weight: 600; color: #e21b23;">
					User Portal </span>

			</a>

			<div class="ms-auto">

				<a href="index2.jsp" class="btn btn-outline-primary me-2">Home</a> <a
					href="userLogout" class="btn btn-danger">Logout</a>

			</div>

		</nav>

	</div>


	<!-- Appointment Section -->

	<div class="appointment-section">

		<div class="appointment-box">

			<div class="appointment-title">

				<h3>
					My <span>Appointments</span>
				</h3>

			</div>


			<table class="table table-bordered table-hover">

				<thead>

					<tr>

						<th>Full Name</th>
						<th>Gender</th>
						<th>Age</th>
						<th>Date</th>
						<th>Phone</th>
						<th>Diseases</th>
						<th>Doctor</th>
						<th>Status</th>

					</tr>

				</thead>

				<tbody>

					<%
					DoctorDAO dDAO = new DoctorDAO(DBConnection.getConn());
					AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());

					List<Appointment> list = appDAO.getAllAppointmentByLoginUser(user.getId());

					for (Appointment ap : list) {

						Doctor doctor = dDAO.getDoctorById(ap.getDoctorId());
					%>

					<tr>

						<td><%=ap.getFullName()%></td>

						<td><%=ap.getGender()%></td>

						<td><%=ap.getAge()%></td>

						<td><%=ap.getAppointmentDate()%></td>

						<td><%=ap.getPhone()%></td>

						<td><%=ap.getDiseases()%></td>

						<td><%=doctor.getFullName()%></td>

						<td>
							<%
							if ("Pending".equals(ap.getStatus())) {
							%> <span class="pending">Pending</span> <%
 } else {
 %> <span class="done"><%=ap.getStatus()%></span> <%
 }
 %>

						</td>

					</tr>

					<%
					}
					%>

				</tbody>

			</table>

		</div>

	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>