<%@page import="com.hmsm.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.dao.AppointmentDAO"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Page</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* Main Container Card */
.mediverse-card {
	background: #fff3e6;
	border-radius: 16px;
	padding: 25px;
	border: 1px solid #ffe0c2;
	box-shadow: 0 8px 22px rgba(0, 0, 0, 0.15);
}

/* Page Title */
.page-title {
	color: #1f3c88;
	font-weight: 700;
}

/* Table Style */
.patient-table {
	border-radius: 12px;
	overflow: hidden;
}

/* Table Header */
.patient-table thead {
	background: #1f3c88;
	color: white;
}

/* Row Hover */
.patient-table tbody tr:hover {
	background: #f5f8ff;
}

/* Status Badge */
.status-badge {
	background: #e9f2ff;
	color: #1f3c88;
	padding: 5px 12px;
	border-radius: 6px;
	font-size: 13px;
	font-weight: 600;
}

/* Light Comment Button */
.comment-btn-light {
	background: #cfe0ff;
	color: #1f3c88;
	padding: 6px 14px;
	border-radius: 6px;
	font-size: 14px;
	font-weight: 600;
	text-decoration: none;
	display: inline-block;
}

.comment-btn-light:hover {
	background: #b7d1ff;
	color: #1f3c88;
}

/* Dark Comment Button */
.comment-btn-dark {
	background: #1f3c88;
	color: white;
	padding: 6px 14px;
	border-radius: 6px;
	font-size: 14px;
	font-weight: 600;
	border: none;
}

/* Responsive spacing */
.container {
	margin-top: 25px;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>

	<%
	/* --------- LOGIN CHECK --------- */
	Doctor doctor = (Doctor) session.getAttribute("doctorObj");

	if (doctor == null) {
		response.sendRedirect("../doctor_login.jsp");
		return;
	}
	%>

	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="mediverse-card">

					<div class="card-body">

						<p class="text-center fs-3 page-title">
							<i class="fa-solid fa-hospital-user"></i> Patient Details
						</p>

						<%
						/* --------- SUCCESS MESSAGE --------- */
						String successMsg = (String) session.getAttribute("successMsg");
						if (successMsg != null) {
						%>

						<p class="text-center text-success fs-5"><%=successMsg%></p>

						<%
						session.removeAttribute("successMsg");
						}

						/* --------- ERROR MESSAGE --------- */
						String errorMsg = (String) session.getAttribute("errorMsg");
						if (errorMsg != null) {
						%>

						<p class="text-center text-danger fs-5"><%=errorMsg%></p>

						<%
						session.removeAttribute("errorMsg");
						}
						%>

						<div class="table-responsive patient-table">

							<table class="table table-hover align-middle">

								<thead>
									<tr>
										<th>Full Name</th>
										<th>Gender</th>
										<th>Age</th>
										<th>Appointment Date</th>
										<th>Email</th>
										<th>Phone</th>
										<th>Diseases</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>

								<tbody>

									<%
									AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());
									List<Appointment> list = appDAO.getAllAppointmentByLoginDoctor(doctor.getId());

									for (Appointment applist : list) {
									%>

									<tr>

										<td><%=applist.getFullName()%></td>
										<td><%=applist.getGender()%></td>
										<td><%=applist.getAge()%></td>
										<td><%=applist.getAppointmentDate()%></td>
										<td><%=applist.getEmail()%></td>
										<td><%=applist.getPhone()%></td>
										<td><%=applist.getDiseases()%></td>

										<td><span class="status-badge"> <%=applist.getStatus()%>
										</span></td>

										<td>
											<%
											if ("Pending".equals(applist.getStatus())) {
											%> <a href="comment.jsp?id=<%=applist.getId()%>"
											class="comment-btn-light"> Comment </a> <%
 } else {
 %>

											<button class="comment-btn-dark" disabled>Comment</button> <%
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

				</div>

			</div>

		</div>

	</div>

</body>
</html>