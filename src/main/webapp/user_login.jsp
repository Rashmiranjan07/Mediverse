<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Login - Mediverse</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<%@ include file="component/allcss.jsp" %>

<style>

body{
    margin:0;
    font-family:'Segoe UI',sans-serif;
    background:#132440;
}

/* login section */

.login-section{
    min-height:calc(100vh - 80px);
    display:flex;
    align-items:center;
    justify-content:center;
    padding:40px 15px;
}

/* login box */

.login-box{
    width:100%;
    max-width:420px;
    background:#ffffff;
    padding:40px;
    border-radius:30px;
    box-shadow:0 15px 40px rgba(0,0,0,0.15);
}

/* logo */

.logo{
    text-align:center;
    margin-bottom:30px;
}

.logo h2{
    font-weight:700;
    color:#1f3c88;
}

/* labels */

.form-label{
    font-weight:500;
    margin-top:10px;
}

/* input */

.form-control{
    padding:14px;
    border-radius:10px;
    border:1px solid #cfd6df;
    background:#eef2f7;
}

/* login button */

.login-btn{
    width:100%;
    margin-top:20px;
    padding:14px;
    border:none;
    border-radius:10px;
    background:#1f3c88;
    color:white;
    font-weight:600;
    transition:0.3s;
}

.login-btn:hover{
    background:#162e69;
}

/* register link */

.register-link{
    text-align:center;
    margin-top:18px;
    font-size:14px;
}

.register-link a{
    text-decoration:none;
    color:#e21b23;
    font-weight:600;
}

.register-link a:hover{
    text-decoration:underline;
}

/* mobile responsive */

@media (max-width:576px){

.login-box{
    padding:30px;
    border-radius:20px;
}

.logo h2{
    font-size:22px;
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
<h4 style="font-weight:700; color:#e21b23; letter-spacing:1px;">User Login</h4>
</div>

<div class="container">

    

    <!-- Error Message -->
    <%
        String errorMsg = (String) session.getAttribute("errorMsg");
        if (errorMsg != null) {
    %>
        <p class="error"><%= errorMsg %></p>
    <%
            session.removeAttribute("errorMsg");
        }
    %>

<form action="UserLogin" method="post">

<label class="form-label">Email</label>
<input type="email" name="email" class="form-control" placeholder="Enter Email" required>

<label class="form-label">Password</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password" required>

<button class="login-btn">Login</button>

</form>


<!-- Register Link -->

<div class="register-link">
New User? <a href="register.jsp">Register Here</a>
</div>


</div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>