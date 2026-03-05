<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@page import="com.hmsm.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.AppointmentDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Details | Admin</title>

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

/* section */
.patient-section {
	padding: 50px 20px;
}

/* card */
.patient-card {
	background: #ffffff;
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
}

/* title */
.patient-title {
	text-align: center;
	font-size: 30px;
	font-weight: 700;
	color: #1f3c88;
	margin-bottom: 25px;
}

/* table */
.table thead {
	background: #1f3c88;
	color: white;
}

.table th {
	text-align: center;
	font-weight: 600;
}

.table td {
	vertical-align: middle;
	text-align: center;
}

/* status badge */
.status-badge {
	background: #e21b23;
	padding: 6px 12px;
	border-radius: 8px;
	font-weight: 600;
}

/* row hover */
.table tbody tr:hover {
	background: #f5f7ff;
	transition: 0.3s;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>


	<div class="container patient-section">

		<div class="patient-card">

			<h3 class="patient-title">
				<i class="fa-solid fa-hospital-user"></i> Patient Details
			</h3>


			<div class="table-responsive">

				<table class="table table-bordered table-hover">

					<thead>
						<tr>
							<th>Full Name</th>
							<th>Gender</th>
							<th>Age</th>
							<th>Appointment Date</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Diseases</th>
							<th>Doctor Name</th>
							<th>Address</th>
							<th>Status</th>
						</tr>
					</thead>

					<tbody>

						<%
						AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());
						DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());

						List<Appointment> list = appDAO.getAllAppointment();

						if (list != null && !list.isEmpty()) {
							for (Appointment app : list) {

								Doctor doctor = docDAO.getDoctorById(app.getDoctorId());
						%>

						<tr>

							<td><%=app.getFullName()%></td>
							<td><%=app.getGender()%></td>
							<td><%=app.getAge()%></td>
							<td><%=app.getAppointmentDate()%></td>
							<td><%=app.getEmail()%></td>
							<td><%=app.getPhone()%></td>
							<td><%=app.getDiseases()%></td>

							<td><%=(doctor != null) ? doctor.getFullName() : "Not Assigned"%>
							</td>

							<td><%=app.getAddress()%></td>

							<td><span class="badge status-badge"> <%=app.getStatus()%>
							</span></td>

						</tr>

						<%
						}
						} else {
						%>

						<tr>

							<td colspan="10" class="text-center text-danger fw-bold">No
								Appointments Found</td>

						</tr>

						<%
						}
						%>

					</tbody>

				</table>

			</div>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
		
	</script>

</body>
</html>