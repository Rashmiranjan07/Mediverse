<%@page import="java.util.List"%>
<%@page import="com.hmsm.db.DBConnection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor Profile</title>

<style>
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
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

	<div class="container p-4">
		<div class="row">

			<!-- ================= Change Password ================= -->
			<div class="col-md-4">
				<div class="card my-card">
					<div class="card-body">
						<h4 class="text-center text-success">Change Password</h4>

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

							<button class="btn btn-success w-100">Change Password</button>
						</form>

					</div>
				</div>
			</div>

			<!-- ================= Edit Profile ================= -->
			<div class="col-md-6 offset-md-2">
				<div class="card my-card">
					<div class="card-body">
						<h4 class="text-center text-success">Edit Profile</h4>

						<%
						String successMsgForD = (String) session.getAttribute("successMsgForD");
						if (successMsgForD != null) {
						%>
						<p class="text-success text-center"><%=successMsgForD%></p>
						<%
						session.removeAttribute("successMsgForD");
						}

						String errorMsgForD = (String) session.getAttribute("errorMsgForD");
						if (errorMsgForD != null) {
						%>
						<p class="text-danger text-center"><%=errorMsgForD%></p>
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

							<button class="btn btn-success w-100">Update Profile</button>

						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>