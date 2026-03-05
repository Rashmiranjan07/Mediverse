<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login - Mediverse</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%@ include file="component/allcss.jsp"%>

<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* login section */
.login-section {
	min-height: calc(100vh - 80px);
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 15px;
}

/* login container */
.login-box {
	width: 100%;
	max-width: 420px;
	background: #ffffff;
	padding: 40px;
	border-radius: 30px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
}

/* title */
.logo {
	text-align: center;
	margin-bottom: 30px;
}

.logo h2 {
	font-weight: 700;
	color: #1f3c88;
}

/* labels */
.form-label {
	font-weight: 500;
	margin-top: 10px;
}

/* input */
.form-control {
	padding: 14px;
	border-radius: 10px;
	border: 1px solid #cfd6df;
	background: #dfe5ed;
}

/* button */
.login-btn {
	width: 100%;
	margin-top: 20px;
	padding: 14px;
	border: none;
	border-radius: 10px;
	background: #1f3c88;
	color: white;
	font-weight: 600;
	transition: 0.3s;
}

.login-btn:hover {
	background: #162e69;
}

/* footer text */
.footer-text {
	text-align: center;
	margin-top: 20px;
	font-size: 13px;
	color: #666;
}

/* mobile adjustments */
@media ( max-width :576px) {
	.login-box {
		padding: 30px;
		border-radius: 20px;
	}
	.logo h2 {
		font-size: 22px;
	}
}
</style>
</head>
<body>
	<!-- NAVBAR -->
	<%@ include file="component/navbar.jsp"%>
	<div class="login-section">

		<div class="login-box">

			<div class="logo">
				<h2>Mediverse Admin</h2>
			</div>

			<!-- Success Message -->
			<%
			String successMsg = (String) session.getAttribute("successMsg");
			if (successMsg != null) {
			%>
			<p style="color: green;"><%=successMsg%></p>
			<%
			session.removeAttribute("successMsg");
			}
			%>

			<!-- Error Message -->
			<%
			String errorMsg = (String) session.getAttribute("errorMsg");
			if (errorMsg != null) {
			%>
			<p style="color: red;"><%=errorMsg%></p>
			<%
			session.removeAttribute("errorMsg");
			}
			%>

			<form action="adminLogin" method="post">

				<label class="form-label">Email</label> <input type="email"
					name="email" class="form-control" placeholder="Enter Email"
					required> <label class="form-label">Password</label> <input
					type="password" name="password" class="form-control"
					placeholder="Enter Password" required>

				<button class="login-btn">Sign In</button>

			</form>

			<div class="footer-text">Admin Portal</div>

		</div>
	</div>

	<!-- Bootstrap JS (Required for Navbar Toggle) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>