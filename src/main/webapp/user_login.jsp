<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Login - Mediverse</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- FontAwesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<%@ include file="component/allcss.jsp"%>

<style>
body {
	margin: 0;
	font-family: 'Poppins', sans-serif;
	background: #132440;
}

/* section */
.login-section {
	min-height: calc(100vh - 80px);
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 40px 15px;
}

/* cream container */
.login-box {
	width: 100%;
	max-width: 420px;
	background: #fff8ef;
	padding: 40px;
	border-radius: 18px;
	box-shadow: 0 12px 40px rgba(0, 0, 0, 0.25);
	animation: fadeIn 0.7s ease;
}

/* animation */
@
keyframes fadeIn {from { opacity:0;
	transform: translateY(15px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}

/* logo */
.logo {
	text-align: center;
	margin-bottom: 25px;
}

.logo h2 {
	font-weight: 600;
	color: #1f3c88;
}

.logo h4 {
	font-weight: 600;
	color: #e21b23;
	letter-spacing: 1px;
}

/* labels */
.form-label {
	font-weight: 500;
	margin-top: 12px;
	color: #1f3c88;
}

/* input */
.form-control {
	padding: 12px;
	border-radius: 8px;
	border: 1px solid #e1e6ef;
	background: #f6f8fc;
	transition: 0.25s;
}

.form-control:focus {
	border-color: #1f3c88;
	box-shadow: none;
	background: white;
}

/* login button */
.login-btn {
	width: 100%;
	margin-top: 20px;
	padding: 12px;
	border: none;
	border-radius: 8px;
	background: #1f3c88;
	color: white;
	font-weight: 500;
	transition: 0.3s;
}

.login-btn:hover {
	background: #162e69;
	transform: translateY(-2px);
}

/* error */
.error {
	color: red;
	text-align: center;
	font-weight: 500;
}

/* register link */
.register-link {
	text-align: center;
	margin-top: 18px;
	font-size: 14px;
}

.register-link a {
	text-decoration: none;
	color: #e21b23;
	font-weight: 600;
}

.register-link a:hover {
	text-decoration: underline;
}

/* responsive */
@media ( max-width :576px) {
	.login-box {
		padding: 30px;
	}
}
</style>

</head>

<body>

	<!-- NAVBAR -->
	<%@ include file="component/navbar.jsp"%>


	<!-- Login Section -->

	<div class="login-section">

		<div class="login-box">

			<div class="logo">

				<h2>Mediverse</h2>

				<h4>User Login</h4>

			</div>


			<div class="container">


				<!-- Error Message -->

				<%
				String errorMsg = (String) session.getAttribute("errorMsg");

				if (errorMsg != null) {
				%>

				<p class="error">
					<%=errorMsg%>
				</p>

				<%
				session.removeAttribute("errorMsg");
				}
				%>


				<form action="UserLogin" method="post">

					<label class="form-label"> <i class="fa-solid fa-envelope"></i>
						Email
					</label> <input type="email" name="email" class="form-control"
						placeholder="Enter Email" required> <label
						class="form-label"> <i class="fa-solid fa-lock"></i>
						Password
					</label> <input type="password" name="password" class="form-control"
						placeholder="Enter Password" required>


					<button class="login-btn">
						<i class="fa-solid fa-right-to-bracket"></i> Login
					</button>

				</form>


				<!-- Register Link -->

				<div class="register-link">

					New User? <a href="register.jsp">Register Here</a>

				</div>


			</div>

		</div>

	</div>


	<!-- Bootstrap JS -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>