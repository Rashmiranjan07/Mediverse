<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<!-- Simple Admin Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">

		<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
Mediverse		</a>

		<ul class="navbar-nav me-auto">
			<li class="nav-item">
				<a class="nav-link active" 
				   href="<%=request.getContextPath()%>/index.jsp">
					HOME
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" 
				   href="<%=request.getContextPath()%>/admin/doctor.jsp">
					DOCTOR
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" 
				   href="<%=request.getContextPath()%>/admin/view_doctor.jsp">
					VIEW DOCTOR
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link active" 
				   href="<%=request.getContextPath()%>/admin/patient.jsp">
					PATIENT
				</a>
			</li>
		</ul>

		<div class="dropdown">
			<button class="btn btn-outline-light dropdown-toggle"
				data-bs-toggle="dropdown">
				Admin
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

<!-- Page Content -->
<div class="container mt-4">
	<h3 class="text-success">Welcome to Admin Dashboard</h3>
	<p>This is your simple admin panel page.</p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>