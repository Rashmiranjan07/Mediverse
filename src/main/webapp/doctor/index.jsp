
<%@page import="com.hmsm.entity.Doctor"%>
<%@page import="com.hmsm.db.DBConnection"%>
<%@page import="com.hmsm.dao.DoctorDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page | Doctor</title>


<!-- customs css for this page -->
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
	/*box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.3);*/
}
</style>
<!-- end of customs css for this page -->



</head>
<body>
	<%@include file="navbar.jsp"%>


	<!-- check is doctor is login or not if login then only he can access doctors dashboard -->
	<!-- otherwise redirect him to doctor login page for log in -->
	<!-- if "doctorObj" is empty means no one is login. -->

	<%
if(session.getAttribute("doctorObj") == null){
	response.sendRedirect("doctor_login.jsp");
	return;
}
%>

	<!-- check is doctor is login or not -->


	<div class="container p-5">
		<p class="text-center text-success fs-3">Doctor DashBoard</p>

		<%
		
		
		DoctorDAO docDAO = new DoctorDAO(DBConnection.getConn());
		int totalNumberOfDoctor = docDAO.countTotalDoctor();
		
		//get current login doctor object from session
		Doctor currentLoginDoctor = (Doctor)session.getAttribute("doctorObj");
		
		
		%>

		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card my-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-user-doctor fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor <br><%= totalNumberOfDoctor %>
						</p>
					</div>
				</div>

			</div>

			<div class="col-md-4">
				<div class="card my-card">
					<div class="card-body text-center text-success">
						<i class="fa-solid fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment <br> <%= docDAO.countTotalAppointmentByDoctorId(currentLoginDoctor.getId()) %>
						</p>
					</div>
				</div>

			</div>
		</div>


	</div>




</body>
</html>