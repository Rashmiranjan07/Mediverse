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


<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
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

<div class="container p-3">
	<div class="row">
		<div class="col-md-12">
			<div class="card my-card">
				<div class="card-body">
					<p class="text-center text-success fs-3">Patient Details</p>

					<%
					/* --------- SUCCESS MESSAGE --------- */
					String successMsg = (String) session.getAttribute("successMsg");
					if (successMsg != null) {
					%>
						<p class="text-center text-success fs-5"><%= successMsg %></p>
					<%
						session.removeAttribute("successMsg");
					}

					/* --------- ERROR MESSAGE --------- */
					String errorMsg = (String) session.getAttribute("errorMsg");
					if (errorMsg != null) {
					%>
						<p class="text-center text-danger fs-5"><%= errorMsg %></p>
					<%
						session.removeAttribute("errorMsg");
					}
					%>

					<table class="table table-striped">
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
								<td><%= applist.getFullName() %></td>
								<td><%= applist.getGender() %></td>
								<td><%= applist.getAge() %></td>
								<td><%= applist.getAppointmentDate() %></td>
								<td><%= applist.getEmail() %></td>
								<td><%= applist.getPhone() %></td>
								<td><%= applist.getDiseases() %></td>
								<td><%= applist.getStatus() %></td>

								<td>
								<%
								if ("Pending".equals(applist.getStatus())) {
								%>
									<a href="comment.jsp?id=<%= applist.getId() %>"
										class="btn btn-success btn-sm">
										Comment / Prescription
									</a>
								<%
								} else {
								%>
									<button class="btn btn-success btn-sm" disabled>
										Comment / Prescription
									</button>
								<%
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

</body>
</html>