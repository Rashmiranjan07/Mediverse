<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Navbar</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
body {
	font-family: 'Segoe UI', sans-serif;
	background: #132440;
}

/* Navbar */
.navbar-custom {
	background: #ffffff;
	padding: 14px 25px;
	border-radius: 18px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

/* Brand */
.navbar-brand {
	font-weight: 700;
	font-size: 22px;
	color: #1f3c88 !important;
}

.navbar-brand span {
	color: #e21b23;
}

/* Nav links */
.nav-link {
	color: #1f3c88 !important;
	font-weight: 600;
	margin: 0 10px;
	position: relative;
}

/* Hover underline animation */
.nav-link::after {
	content: "";
	position: absolute;
	width: 0%;
	height: 2px;
	background: #e21b23;
	left: 0;
	bottom: -4px;
	transition: 0.3s;
}

.nav-link:hover::after {
	width: 100%;
}

/* Logout Button */
.logout-btn {
	background: #e21b23;
	color: white;
	border: none;
	padding: 6px 16px;
	border-radius: 8px;
	font-weight: 600;
}

.logout-btn:hover {
	background: #c9161d;
}
</style>

</head>
<body>

	<%@ page isELIgnored="false"%>

	<div class="container mt-3">

		<nav class="navbar navbar-expand-lg navbar-custom">

			<div class="container-fluid">

				<a class="navbar-brand" href="index.jsp"> Mediverse <span>Doctor</span>
				</a>

				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarContent">

					<span class="navbar-toggler-icon"></span>

				</button>

				<div class="collapse navbar-collapse" id="navbarContent">

					<ul class="navbar-nav me-auto">

						<li class="nav-item"><a class="nav-link" href="index.jsp">HOME</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="patient.jsp">PATIENT</a>
						</li>

					</ul>

					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link"
							href="edit_profile.jsp">EDIT PROFILE</a></li>

						<li class="nav-item ms-2"><a
							href="<%=request.getContextPath()%>/doctorLogout">
								<button class="logout-btn">Logout</button>
						</a></li>

					</ul>

				</div>

			</div>

		</nav>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>