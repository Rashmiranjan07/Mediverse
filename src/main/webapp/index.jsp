
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mediverse - Doctor Portal</title>

<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Include CSS JSP -->
<%@ include file="component/allcss.jsp"%>
<style>
/* ================= MODERN FEATURES ================= */
.main-content {
	background: #f8f9fc;
	padding: 100px 0;
}

.section-title {
	font-size: 36px;
	font-weight: 700;
	color: #132440;
	margin-bottom: 15px;
}

.section-subtitle {
	color: #6c757d;
	max-width: 700px;
	margin: auto;
	font-size: 16px;
}

.feature-card {
	background: #ffffff;
	padding: 30px;
	border-radius: 18px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
	transition: 0.4s ease;
	height: 100%;
}

.feature-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 20px 40px rgba(19, 36, 64, 0.15);
}

.feature-icon {
	font-size: 40px;
	margin-bottom: 20px;
}

.feature-card h5 {
	font-weight: 600;
	margin-bottom: 15px;
	color: #1f3c88;
}

.feature-card p {
	color: #555;
	font-size: 14px;
	line-height: 1.6;
}
</style>
</head>

<body>

	<!-- NAVBAR -->
<%@ include file="component/navbar.jsp"%>


	<!-- HERO -->
	<section class="hero-section">
		<div class="hero-content">
			<h1>Welcome to Mediverse</h1>
			<p>Your Trusted Healthcare Partner</p>
			<a href="#" class="hero-btn">Get Started</a>
		</div>
	</section>

	<!-- ================= MODERN FEATURES SECTION ================= -->
	<section class="main-content">

		<div class="container py-5">

			<!-- Section Heading -->
			<div class="text-center mb-5">
				<h2 class="section-title">Why Choose Our Smart Healthcare
					System</h2>
				<p class="section-subtitle">Advanced technology, trusted
					doctors, and seamless patient experience — everything designed for
					modern healthcare.</p>
			</div>

			<div class="row g-4">

				<!-- Feature 1 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">🩺</div>
						<h5>Expert Doctors Network</h5>
						<p>Connect instantly with highly experienced specialists
							across multiple medical domains with verified credentials.</p>
					</div>
				</div>

				<!-- Feature 2 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">💻</div>
						<h5>Smart Appointment Booking</h5>
						<p>Book, reschedule or cancel appointments easily with
							real-time availability and instant confirmation.</p>
					</div>
				</div>

				<!-- Feature 3 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">📊</div>
						<h5>Digital Health Records</h5>
						<p>Securely store and access medical history, prescriptions
							and reports anytime, anywhere.</p>
					</div>
				</div>

				<!-- Feature 4 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">🔬</div>
						<h5>Advanced Diagnostics</h5>
						<p>Integrated laboratory systems with fast, accurate reporting
							and online result tracking.</p>
					</div>
				</div>

				<!-- Feature 5 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">💊</div>
						<h5>Pharmacy Integration</h5>
						<p>Order medicines directly from your prescription with
							doorstep delivery and stock tracking.</p>
					</div>
				</div>

				<!-- Feature 6 -->
				<div class="col-md-6 col-lg-4">
					<div class="feature-card">
						<div class="feature-icon">🔒</div>
						<h5>Secure & Private</h5>
						<p>End-to-end encrypted system ensuring complete
							confidentiality and data protection.</p>
					</div>
				</div>

			</div>

		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

	<!--  -->

</body>
<%@ include file="component/footer.jsp"%>

</html>





