<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.entity.Appointment"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Comment/Prescription Doctor</title>


<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
}

.my-bg-img {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/hospital1.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

</head>
<body>

	<%@include file="navbar.jsp"%>

	<%
	/* -------- LOGIN CHECK -------- */
	Doctor doctor = (Doctor) session.getAttribute("doctorObj");

	if (doctor == null) {
		response.sendRedirect("../doctor_login.jsp");
		return;
	}
	%>

	<!-- Background Section -->
	<div class="container-fluid my-bg-img p-5"></div>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card my-card">
					<div class="card-body">
						<p class="text-center fs-3">Leave a Treatment Comment</p>

						<%
						/* -------- SUCCESS MESSAGE -------- */
						String successMsg = (String) session.getAttribute("successMsg");
						if (successMsg != null) {
						%>
						<p class="text-center text-success fs-5"><%=successMsg%></p>
						<%
						session.removeAttribute("successMsg");
						}

						/* -------- ERROR MESSAGE -------- */
						String errorMsg = (String) session.getAttribute("errorMsg");
						if (errorMsg != null) {
						%>
						<p class="text-center text-danger fs-5"><%=errorMsg%></p>
						<%
						session.removeAttribute("errorMsg");
						}
						%>

						<%
						/* -------- GET APPOINTMENT -------- */
						int id = Integer.parseInt(request.getParameter("id"));
						AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());
						Appointment appointment = appDAO.getAppointmentById(id);
						%>

						<form action="<%=request.getContextPath()%>/updateStatus"
							method="post">
							<div class="col-md-6">
								<label class="form-label">Full Name</label> <input
									name="fullName" type="text" class="form-control" readonly
									value="<%=appointment.getFullName()%>">
							</div>

							<div class="col-md-6">
								<label class="form-label">Age</label> <input name="age"
									type="number" class="form-control" readonly
									value="<%=appointment.getAge()%>">
							</div>

							<div class="col-md-6">
								<label class="form-label">Phone</label> <input name="phone"
									type="text" class="form-control" readonly
									value="<%=appointment.getPhone()%>">
							</div>

							<div class="col-md-6">
								<label class="form-label">Diseases</label> <input
									name="diseases" type="text" class="form-control" readonly
									value="<%=appointment.getDiseases()%>">
							</div>

							<div class="col-md-12">
								<label class="form-label">Leave a Comment / Prescription</label>
								<textarea name="comment" class="form-control" rows="4" required></textarea>
							</div>

							<input type="hidden" name="id" value="<%=appointment.getId()%>">

							<input type="hidden" name="doctorId"
								value="<%=appointment.getDoctorId()%>">

							<div class="col-md-12">
								<button type="submit" class="btn btn-success col-md-12">
									Submit</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>