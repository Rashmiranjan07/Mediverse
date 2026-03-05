<%@ page import="com.hmsm.entity.Doctor"%>
<%@ page import="com.hmsm.dao.DoctorDAO"%>
<%@ page import="com.hmsm.db.DBConnection"%>

<%
int id = Integer.parseInt(request.getParameter("id"));

DoctorDAO dao = new DoctorDAO(DBConnection.getConn());
Doctor doctor = dao.getDoctorById(id);

String successMsg = (String) session.getAttribute("successMsg");
String errorMsg = (String) session.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor | Mediverse</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- FontAwesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
	margin: 0;
}

/* section */
.edit-section {
	padding: 50px 20px;
}

/* card */
.edit-card {
	background: #ffffff;
	border-radius: 20px;
	padding: 35px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
}

/* title */
.edit-title {
	text-align: center;
	font-size: 28px;
	font-weight: 700;
	color: #1f3c88;
	margin-bottom: 25px;
}

/* form inputs */
.form-control {
	border-radius: 8px;
	padding: 10px;
}

/* button */
.update-btn {
	background: #1f3c88;
	color: white;
	border: none;
	padding: 10px 20px;
	font-weight: 600;
	border-radius: 8px;
}

.update-btn:hover {
	background: #162d66;
}

/* back button */
.back-btn {
	background: #e21b23;
	color: white;
	padding: 8px 16px;
	border-radius: 8px;
	text-decoration: none;
	font-weight: 600;
}

.back-btn:hover {
	background: #c5161d;
	color: white;
}
</style>

</head>

<body>

	<!-- Navbar -->
	<%@ include file="navbar.jsp"%>

	<div class="container edit-section">

		<div class="row justify-content-center">

			<div class="col-md-8">

				<div class="edit-card">

					<h3 class="edit-title">
						<i class="fa-solid fa-user-doctor"></i> Edit Doctor Details
					</h3>

					<div class="text-end mb-3">
						<a href="view_doctor.jsp" class="back-btn"> <i
							class="fa-solid fa-arrow-left"></i> Back
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


					<form action="<%=request.getContextPath()%>/updateDoctor"
						method="post">

						<div class="row">

							<div class="col-md-6 mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									name="fullName" class="form-control"
									value="<%=doctor.getFullName()%>" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Date of Birth</label> <input
									type="date" name="dateOfBirth" class="form-control"
									value="<%=doctor.getDateOfBirth()%>" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" name="qualification" class="form-control"
									value="<%=doctor.getQualification()%>" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Specialist</label> <input type="text"
									name="specialist" class="form-control"
									value="<%=doctor.getSpecialist()%>" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Email</label> <input type="email"
									name="email" class="form-control"
									value="<%=doctor.getEmail()%>" required>
							</div>

							<div class="col-md-6 mb-3">
								<label class="form-label">Phone</label> <input type="text"
									name="phone" class="form-control"
									value="<%=doctor.getPhone()%>" required>
							</div>

							<div class="col-md-12 mb-3">
								<label class="form-label">Password</label> <input type="text"
									name="password" class="form-control"
									value="<%=doctor.getPassword()%>" required>
							</div>

							<!-- Hidden ID -->
							<input type="hidden" name="id" value="<%=doctor.getId()%>">

							<div class="text-center mt-3">

								<button type="submit" class="update-btn">
									<i class="fa-solid fa-pen"></i> Update Doctor
								</button>

							</div>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>