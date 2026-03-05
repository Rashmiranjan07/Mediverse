<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">

</head>
<body>



	<style>

/* ================= GLOBAL RESET ================= */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
}

/* ================= NAVBAR ================= */
.site-header {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	background-color: #132440;
	padding: 20px 0;
	z-index: 1000;
}

.custom-navbar {
	background: #ffffff;
	border-radius: 18px;
	padding: 16px 30px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
}

.logo {
	display: flex;
	flex-direction: column;
	text-decoration: none;
}

.logo-main {
	font-size: 22px;
	font-weight: 700;
	color: #1f3c88;
}

.logo-sub {
	font-size: 14px;
	font-weight: 600;
	color: #e21b23;
}

.nav-link-custom {
	color: #1f3c88 !important;
	font-weight: 500;
	margin: 0 14px;
}

.nav-link-custom:hover {
	color: #e21b23 !important;
}

.btn-outline-custom {
	border: 2px solid #1f3c88;
	color: #1f3c88;
	padding: 8px 20px;
	border-radius: 12px;
	font-weight: 500;
}

.btn-outline-custom:hover {
	background: #1f3c88;
	color: white;
}

.navbar-nav .nav-link{
    position: relative;
    text-decoration: none;
}

.navbar-nav .nav-link::after{
    content: "";
    position: absolute;
    left: 15px;
    bottom: 0;
    width: 0;
    height: 2px;
    background: #e21b23;
    transition: width 0.3s ease;
}

.navbar-nav .nav-link:hover::after{
    width: calc(100% - 30px);
}
/* ================= HERO ================= */
.hero-section {
	height: 60vh;
	background-color: #132440;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	color: white;
	padding: 0 20px;
	padding-top: 120px;
}

.hero-content h1 {
	font-size: 52px;
	font-weight: 700;
	margin-bottom: 20px;
}

.hero-content p {
	font-size: 18px;
	margin-bottom: 30px;
	opacity: 0.9;
}

.hero-btn {
	background: #e21b23;
	color: white;
	padding: 12px 32px;
	border-radius: 30px;
	font-weight: 600;
	text-decoration: none;
	transition: 0.3s ease;
}

.hero-btn:hover {
	background: #c5161d;
	transform: translateY(-3px);
	box-shadow: 0 10px 25px rgba(226, 27, 35, 0.4);
}

/* ================= MAIN CONTENT ================= */
.main-content {
	background: #f3f4f6;
	padding: 100px 20px;
}
</style>


</body>
</html>