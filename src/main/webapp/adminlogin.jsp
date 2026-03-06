<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Login | Mediverse</title>

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

/* Center Section */
.login-section {
	min-height: calc(100vh - 80px);
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 15px;
}

/* Cream Mediverse Container */
.login-container {
	background: #f7f0e6;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
	width: 100%;
	max-width: 450px;
}

/* Logo */
.logo {
	text-align: center;
	margin-bottom: 25px;
}

.logo h2 {
	font-weight: 700;
	color: #1f3c88;
}

.logo h3 {
	font-weight: 700;
	color: #e21b23;
	letter-spacing: 1px;
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 8px;
}

/* Labels */
.form-label {
	font-weight: 600;
	color: #1f3c88;
	margin-top: 10px;
}

/* Inputs */
.form-control {
	padding: 12px;
	border-radius: 8px;
	border: 1px solid #ced4da;
	background: #ffffff;
}

/* Button */
.login-btn {
	width: 100%;
	margin-top: 20px;
	padding: 12px;
	border: none;
	border-radius: 8px;
	background: #1f3c88;
	color: white;
	font-weight: 600;
	transition: 0.3s;
}

.login-btn:hover {
	background: #162e69;
}

/* Messages */
.success-msg {
	color: green;
	text-align: center;
	font-weight: 500;
}

.error-msg {
	color: red;
	text-align: center;
	font-weight: 500;
}

/* Footer */
.footer-text {
	text-align: center;
	margin-top: 20px;
	font-size: 14px;
	color: #555;
}
</style>

</head>

<body>

	<!-- NAVBAR -->
	<%@ include file="component/navbar.jsp"%>

	<div class="login-section">

		<div class="login-container">

			<div class="logo">
				<h2>Mediverse</h2>
				<h3>
					<i class="bi bi-shield-lock-fill"></i> Admin
				</h3>
			</div>

			<!-- Success Message -->
			<%
			String successMsg = (String) session.getAttribute("successMsg");
			if (successMsg != null) {
			%>
			<p class="success-msg"><%=successMsg%></p>
			<%
			session.removeAttribute("successMsg");
			}
			%>

			<!-- Error Message -->
			<%
			String errorMsg = (String) session.getAttribute("errorMsg");
			if (errorMsg != null) {
			%>
			<p class="error-msg"><%=errorMsg%></p>
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

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>