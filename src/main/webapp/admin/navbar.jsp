<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- FontAwesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>
<body>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
	<div class="container-fluid">
		<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
			<i class="fa-solid fa-hospital"></i> Mediverse
		</a>

		<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			<li class="nav-item">
				<a class="nav-link active" href="<%=request.getContextPath()%>/..">
					<i class="fa fa-home"></i> HOME
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" href="<%=request.getContextPath()%>/admin/doctor.jsp">
					<i class="fa-solid fa-user-doctor"></i> DOCTOR
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" href="<%=request.getContextPath()%>/admin/view_doctor.jsp">
					<i class="fa-solid fa-list"></i> VIEW DOCTOR
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" href="<%=request.getContextPath()%>/admin/patient.jsp">
					<i class="fa fa-wheelchair"></i> PATIENT
				</a>
			</li>
		</ul>

		<div class="dropdown">
			<button class="btn btn-light dropdown-toggle" type="button"
				data-bs-toggle="dropdown">
				<i class="fa fa-universal-access"></i> Admin
			</button>
			<ul class="dropdown-menu">
				<li>
					<a class="dropdown-item" 
					   href="<%=request.getContextPath()%>/adminLogout">
						Logout
					</a>
				</li>
			</ul>
		</div>
	</div>
</nav>
<!-- Navbar End -->

<div class="container mt-4">
	<h2>Welcome to Admin Dashboard</h2>
	<p>This is your admin panel page.</p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>