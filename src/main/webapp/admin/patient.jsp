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

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Poppins', sans-serif;
	background: #132440;
	margin: 0;
}

/* section */
.patient-section {
	padding: 50px 20px;
}

/* cream container */
.patient-card {
	background: #fff8ef;
	border-radius: 18px;
	padding: 30px;
	box-shadow: 0 12px 40px rgba(0, 0, 0, 0.25);
	animation: fadeIn 0.7s ease;
}

/* animation */
@
keyframes fadeIn {from { opacity:0;
	transform: translateY(15px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* title */
.patient-title {
	text-align: center;
	font-size: 26px;
	font-weight: 600;
	color: #1f3c88;
	margin-bottom: 25px;
}

/* table design */
.table {
	border-radius: 10px;
	overflow: hidden;
}

/* table header */
.table thead {
	background: #1f3c88;
	color: white;
}

/* table head cells */
.table th {
	text-align: center;
	font-weight: 500;
	padding: 12px;
}

/* table body */
.table td {
	text-align: center;
	vertical-align: middle;
	padding: 12px;
}

/* row hover animation */
.table tbody tr {
	transition: 0.25s;
}

.table tbody tr:hover {
	background: #f4f6ff;
	transform: scale(1.01);
}

/* status badge */
.status-badge {
	background: #e21b23;
	padding: 6px 12px;
	border-radius: 6px;
	font-size: 13px;
	font-weight: 500;
}

/* responsive */
.table-responsive {
	border-radius: 10px;
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

							<td><%=(doctor != null) ? doctor.getFullName() : "Not Assigned"%></td>

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