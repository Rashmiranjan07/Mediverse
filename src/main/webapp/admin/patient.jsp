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


<style>
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>

</head>
<body>

<%@include file="navbar.jsp"%>

<div class="container-fluid p-4">
	<div class="card my-card">
		<div class="card-body">

			<h3 class="text-center text-danger mb-4">Patient Details</h3>

			<div class="table-responsive">
				<table class="table table-bordered table-striped table-hover">
					<thead class="table-danger">
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

						if(list != null && !list.isEmpty()){
							for(Appointment app : list){

								Doctor doctor = docDAO.getDoctorById(app.getDoctorId());
						%>

						<tr>
							<td><%= app.getFullName() %></td>
							<td><%= app.getGender() %></td>
							<td><%= app.getAge() %></td>
							<td><%= app.getAppointmentDate() %></td>
							<td><%= app.getEmail() %></td>
							<td><%= app.getPhone() %></td>
							<td><%= app.getDiseases() %></td>
							<td>
								<%= (doctor != null) ? doctor.getFullName() : "Not Assigned" %>
							</td>
							<td><%= app.getAddress() %></td>
							<td>
								<span class="badge bg-success">
									<%= app.getStatus() %>
								</span>
							</td>
						</tr>

						<%
							}
						} else {
						%>

						<tr>
							<td colspan="10" class="text-center text-danger">
								No Appointments Found
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

</body>
</html>