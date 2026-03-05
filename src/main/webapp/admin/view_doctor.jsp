<%@ page import="java.util.List"%>
<%@ page import="com.hmsm.entity.Doctor"%>
<%@ page import="com.hmsm.dao.DoctorDAO"%>
<%@ page import="com.hmsm.db.DBConnection"%>

<%
String successMsg = (String) session.getAttribute("successMsg");
String errorMsg = (String) session.getAttribute("errorMsg");

DoctorDAO dao = new DoctorDAO(DBConnection.getConn());
List<Doctor> doctorList = dao.getAllDoctor();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctors | Admin</title>

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
.doctor-section {
	padding: 50px 20px;
}

/* card */
.doctor-card {
	background: #ffffff;
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
}

/* title */
.doctor-title {
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

/* hover */
.table tbody tr:hover {
	background: #f5f7ff;
	transition: 0.3s;
}

/* buttons */
.add-btn {
	background: #1f3c88;
	color: white;
	border: none;
}

.add-btn:hover {
	background: #162d66;
}

.edit-btn {
	background: #1f3c88;
	color: white;
}

.delete-btn {
	background: #e21b23;
	color: white;
}
</style>

</head>

<body>

	<%@ include file="navbar.jsp"%>

	<div class="container doctor-section">

		<div class="doctor-card">

			<h3 class="doctor-title">
				<i class="fa-solid fa-user-doctor"></i> Mediverse Doctors
			</h3>

			<div class="text-end mb-3">

				<a href="doctor.jsp" class="btn add-btn"> <i
					class="fa-solid fa-plus"></i> Add Doctor
				</a>

			</div>

			<!-- Success Message -->

			<%
			if (successMsg != null) {
			%>

			<div class="alert alert-success text-center">
				<%=successMsg%>
			</div>

			<%
			session.removeAttribute("successMsg");
			}
			%>


			<!-- Error Message -->

			<%
			if (errorMsg != null) {
			%>

			<div class="alert alert-danger text-center">
				<%=errorMsg%>
			</div>

			<%
			session.removeAttribute("errorMsg");
			}
			%>

			<div class="table-responsive">

				<table class="table table-bordered table-hover">

					<thead>

						<tr>
							<th>Full Name</th>
							<th>DOB</th>
							<th>Qualification</th>
							<th>Specialist</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>

					</thead>

					<tbody>

						<%
						for (Doctor d : doctorList) {
						%>

						<tr>

							<td><%=d.getFullName()%></td>
							<td><%=d.getDateOfBirth()%></td>
							<td><%=d.getQualification()%></td>
							<td><%=d.getSpecialist()%></td>
							<td><%=d.getEmail()%></td>
							<td><%=d.getPhone()%></td>

							<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
								class="btn btn-sm edit-btn"> <i class="fa-solid fa-pen"></i>
									Edit
							</a></td>

							<td><a
								href="<%=request.getContextPath()%>/deleteDoctor?id=<%=d.getId()%>"
								class="btn btn-sm delete-btn"> <i class="fa-solid fa-trash"></i>
									Delete
							</a></td>

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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>