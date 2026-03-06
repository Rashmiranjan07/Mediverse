<%@page import="java.util.List"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor Profile</title>

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

/* Card Design */
.mediverse-card {
	background: #fff3e6;
	border-radius: 14px;
	border: 1px solid #ffe0c2;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
	padding: 25px;
}

/* Section Titles */
.section-title {
	text-align: center;
	font-size: 20px;
	font-weight: 600;
	color: #1f3c88;
	margin-bottom: 20px;
}

/* Inputs */
.form-control {
	border-radius: 8px;
}

/* Buttons */
.mediverse-btn {
	background: #1f3c88;
	color: white;
	border: none;
	padding: 10px;
	border-radius: 8px;
	font-weight: 600;
	transition: 0.3s;
}

.mediverse-btn:hover {
	background: #162f6a;
}

/* Alert spacing */
.alert {
	border-radius: 8px;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>

	<!-- Login Check -->
	<%
	if (session.getAttribute("doctorObj") == null) {
		response.sendRedirect("doctor_login.jsp");
		return;
	}
	%>

	<div class="container mt-4">

		<div class="row">

			<!-- ================= Change Password ================= -->

			<div class="col-md-4">

				<div class="mediverse-card">

					<h4 class="section-title">
						<i class="fa-solid fa-key"></i> Change Password
					</h4>

					<!-- Success Message -->
					<%
					String successMsg = (String) session.getAttribute("successMsg");
					if (successMsg != null) {
					%>

					<div class="alert alert-success text-center" role="alert">
						<%=successMsg%>
					</div>

					<%
					session.removeAttribute("successMsg");
					}

					String errorMsg = (String) session.getAttribute("errorMsg");
					if (errorMsg != null) {
					%>

					<div class="alert alert-danger text-center" role="alert">
						<%=errorMsg%>
					</div>

					<%
					session.removeAttribute("errorMsg");
					}
					%>

					<form action="<%=request.getContextPath()%>/doctorChangePassword"
						method="post">

						<input type="hidden" name="doctorId" value="${doctorObj.id}">

						<div class="mb-3">
							<label>New Password</label> <input type="password"
								name="newPassword" class="form-control" required>
						</div>

						<div class="mb-3">
							<label>Old Password</label> <input type="password"
								name="oldPassword" class="form-control" required>
						</div>

						<button class="mediverse-btn w-100">Update Password</button>

					</form>

				</div>

			</div>


			<!-- ================= Edit Profile ================= -->

			<div class="col-md-7 offset-md-1">

				<div class="mediverse-card">

					<h4 class="section-title">
						<i class="fa-solid fa-user-pen"></i> Edit Doctor Profile
					</h4>

					<%
					String successMsgForD = (String) session.getAttribute("successMsgForD");
					if (successMsgForD != null) {
					%>

					<p class="text-success text-center">
						<%=successMsgForD%>
					</p>

					<%
					session.removeAttribute("successMsgForD");
					}

					String errorMsgForD = (String) session.getAttribute("errorMsgForD");
					if (errorMsgForD != null) {
					%>

					<p class="text-danger text-center">
						<%=errorMsgForD%>
					</p>

					<%
					session.removeAttribute("errorMsgForD");
					}
					%>

					<form action="<%=request.getContextPath()%>/doctorEditProfile"
						method="post">

						<input type="hidden" name="doctorId" value="${doctorObj.id}">

						<div class="mb-3">
							<label>Full Name</label> <input type="text" name="fullName"
								class="form-control" value="${doctorObj.fullName}" required>
						</div>

						<div class="mb-3">
							<label>Date of Birth</label> <input type="date"
								name="dateOfBirth" class="form-control"
								value="${doctorObj.dateOfBirth}" required>
						</div>

						<div class="mb-3">
							<label>Qualification</label> <input type="text"
								name="qualification" class="form-control"
								value="${doctorObj.qualification}" required>
						</div>

						<div class="mb-3">
							<label>Specialist</label> <input type="text" name="specialist"
								class="form-control" value="${doctorObj.specialist}" required>
						</div>

						<div class="mb-3">
							<label>Email</label> <input type="email" name="email"
								class="form-control" value="${doctorObj.email}" readonly>
						</div>

						<div class="mb-3">
							<label>Phone</label> <input type="text" name="phone"
								class="form-control" value="${doctorObj.phone}" required>
						</div>

						<button class="mediverse-btn w-100">Update Profile</button>

					</form>

				</div>

			</div>

		</div>

	</div>

</body>
</html>