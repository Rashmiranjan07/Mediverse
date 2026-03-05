
<%
String successMsg = (String) session.getAttribute("successMsg");
String errorMsg = (String) session.getAttribute("errorMsg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor | Admin</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
	margin: 0;
}

/* section */
.form-section {
	padding: 60px 20px;
}

/* card */
.form-card {
	background: #ffffff;
	border-radius: 20px;
	padding: 35px;
	box-shadow: 0 15px 40px rgba(0, 0, 0, 0.25);
	max-width: 650px;
	margin: auto;
}

/* title */
.form-title {
	text-align: center;
	font-size: 30px;
	font-weight: 700;
	color: #1f3c88;
	margin-bottom: 25px;
}

/* labels */
label {
	font-weight: 600;
	color: #1f3c88;
	margin-top: 10px;
}

/* inputs */
.form-control {
	border-radius: 10px;
	padding: 10px;
}

/* button */
.btn-mediverse {
	background: #e21b23;
	color: white;
	font-weight: 600;
	border: none;
	padding: 10px;
	border-radius: 10px;
	width: 100%;
	margin-top: 15px;
}

.btn-mediverse:hover {
	background: #c5161d;
}

/* message */
.success-msg {
	color: green;
	font-weight: 600;
	text-align: center;
}

.error-msg {
	color: red;
	font-weight: 600;
	text-align: center;
}
</style>

</head>

<body>

	<%@include file="navbar.jsp"%>

	<div class="container form-section">

		<div class="form-card">

			<h3 class="form-title">
				<i class="fa-solid fa-user-doctor"></i> Add Doctor
			</h3>

			<hr>

			<!-- Success Message -->

			<%
			if (successMsg != null) {
			%>

			<p class="success-msg">
				<%=successMsg%>
			</p>

			<%
			session.removeAttribute("successMsg");
			}
			%>


			<!-- Error Message -->

			<%
			if (errorMsg != null) {
			%>

			<p class="error-msg">
				<%=errorMsg%>
			</p>

			<%
			session.removeAttribute("errorMsg");
			}
			%>


			<form action="<%=request.getContextPath()%>/addDoctor"
				method="post">

				<label>Full Name</label> <input type="text" name="fullName"
					class="form-control" required> <label>Date of Birth</label>
				<input type="date" name="dateOfBirth" class="form-control" required>

				<label>Qualification</label> <input type="text" name="qualification"
					class="form-control" required> <label>Specialist</label> <input
					type="text" name="specialist" class="form-control" required>

				<label>Email</label> <input type="email" name="email"
					class="form-control" required> <label>Phone</label> <input
					type="text" name="phone" class="form-control" required> <label>Password</label>
				<input type="password" name="password" class="form-control" required>

				<button type="submit" class="btn-mediverse">Register Doctor
				</button>

			</form>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>