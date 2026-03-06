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
<title>Comment / Prescription</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>

/* Page Background */
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* Cream Prescription Card */
.prescription-card {
	background: #fff3e6;
	border-radius: 14px;
	border: 1px solid #ffe0c2;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
	padding: 30px;
}

/* Panel Title */
.panel-title {
	text-align: center;
	font-size: 18px;
	font-weight: 600;
	color: #1f3c88;
	margin-bottom: 20px;
}

/* Input Fields */
.form-control {
	border-radius: 8px;
}

/* Submit Button */
.submit-btn {
	background: #1f3c88;
	color: white;
	border: none;
	padding: 10px;
	border-radius: 8px;
	font-weight: 600;
	transition: 0.3s;
}

.submit-btn:hover {
	background: #162f6a;
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

	<div class="container mt-4">

		<div class="row">

			<div class="col-md-8 offset-md-2">

				<div class="prescription-card">

					<p class="panel-title">
						<i class="fa-solid fa-file-medical"></i> Patient Prescription
						Panel
					</p>

					<%
					String successMsg = (String) session.getAttribute("successMsg");
					if (successMsg != null) {
					%>
					<p class="text-center text-success fs-5"><%=successMsg%></p>
					<%
					session.removeAttribute("successMsg");
					}

					String errorMsg = (String) session.getAttribute("errorMsg");
					if (errorMsg != null) {
					%>
					<p class="text-center text-danger fs-5"><%=errorMsg%></p>
					<%
					session.removeAttribute("errorMsg");
					}
					%>

					<%
					int id = Integer.parseInt(request.getParameter("id"));
					AppointmentDAO appDAO = new AppointmentDAO(DBConnection.getConn());
					Appointment appointment = appDAO.getAppointmentById(id);
					%>

					<form action="<%=request.getContextPath()%>/updateStatus"
						method="post">

						<div class="row">

							<div class="col-md-6 mb-3">
								<label class="form-label">Full Name</label> <input
									name="fullName" type="text" class="form-control" readonly
									value="<%=appointment.getFullName()%>">
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="number" class="form-control" readonly
									value="<%=appointment.getAge()%>">
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Phone</label> <input name="phone"
									type="text" class="form-control" readonly
									value="<%=appointment.getPhone()%>">
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Diseases</label> <input
									name="diseases" type="text" class="form-control" readonly
									value="<%=appointment.getDiseases()%>">
							</div>

							<div class="col-md-12 mb-3">
								<label class="form-label"> Leave Comment / Prescription
								</label>

								<textarea name="comment" class="form-control" rows="4" required></textarea>
							</div>

						</div>

						<input type="hidden" name="id" value="<%=appointment.getId()%>">

						<input type="hidden" name="doctorId"
							value="<%=appointment.getDoctorId()%>">

						<div class="d-grid">
							<button type="submit" class="submit-btn">
								<i class="fa-solid fa-paper-plane"></i> Submit Prescription
							</button>
						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>