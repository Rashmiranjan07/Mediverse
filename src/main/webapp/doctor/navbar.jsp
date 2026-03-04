<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<%@ page isELIgnored="false"%>



	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container-fluid">

			<a class="navbar-brand" href="index.jsp"> Mediverse </a>

			<ul class="navbar-nav me-auto">

				<li class="nav-item"><a class="nav-link active"
					href="index.jsp"> HOME </a></li>

				<li class="nav-item"><a class="nav-link active"
					href="patient.jsp"> PATIENT </a></li>

			</ul>

			<ul class="navbar-nav">

				<li class="nav-item"><a class="nav-link active"
					href="edit_profile.jsp"> EDIT PROFILE </a></li>

				<li class="nav-item"><a class="nav-link active"
					href="<%=request.getContextPath()%>/doctorLogout"> LOGOUT </a></li>

			</ul>

		</div>
	</nav>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>