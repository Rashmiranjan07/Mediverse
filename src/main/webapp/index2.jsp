
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Dashboard - Mediverse</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<%@ include file="component/allcss.jsp" %>

<style>

body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#132440;
}

/* hero section */

.hero{
    min-height:85vh;
    display:flex;
    align-items:center;
    justify-content:center;
    text-align:center;
    color:white;
}

/* main title */

.hero h1{
    font-size:46px;
    font-weight:700;
}

/* buttons container */

.action-buttons{
    margin-top:40px;
}

/* common button */

.main-btn{
    padding:16px 35px;
    border:none;
    border-radius:12px;
    font-size:18px;
    font-weight:600;
    margin:10px;
    transition:0.3s;
}

/* book appointment button */

.book-btn{
    background:#e21b23;
    color:white;
}

.book-btn:hover{
    background:#c3171e;
}

/* view appointment button */

.view-btn{
    background:#1f3c88;
    color:white;
}

.view-btn:hover{
    background:#162e69;
}

</style>

</head>

<body>

<!-- Navbar -->

<header class="site-header">
<div class="container">

<nav class="navbar navbar-expand-lg"
style="background:#ffffff; padding:16px 30px; border-radius:18px; box-shadow:0 10px 30px rgba(0,0,0,0.15);">

<!-- Logo -->

<a class="navbar-brand" href="#" style="line-height:1;">
<span style="font-size:22px; font-weight:700; color:#1f3c88;">Mediverse</span><br>
<span style="font-size:14px; font-weight:600; color:#e21b23;">User Portal</span>
</a>

<!-- Toggle -->

<button class="navbar-toggler border-0 shadow-none"
type="button"
data-bs-toggle="collapse"
data-bs-target="#navbarContent">

<span class="navbar-toggler-icon"></span>

</button>

<!-- Menu -->

<div class="collapse navbar-collapse" id="navbarContent">

<ul class="navbar-nav ms-auto">

<li class="nav-item">
<a class="nav-link"
href="logout"
style="color:#e21b23; font-weight:600; margin:0 15px;">
Logout
</a>
</li>

</ul>

</div>

</nav>

</div>
</header>


<!-- Hero Section -->

<section class="hero">

<div>

<h1>Welcome to Mediverse</h1>

<p>Manage your hospital appointments easily</p>

<div class="action-buttons">

<a href="user_appointment.jsp">
<button class="main-btn book-btn">
Book Appointment
</button>
</a>

<a href="view_appointment.jsp">
<button class="main-btn view-btn">
View Appointment
</button>
</a>

</div>

</div>

</section>




<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

