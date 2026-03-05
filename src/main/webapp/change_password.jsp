<%@page import="com.hmsm.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>


<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px maroon;
}
</style>

</head>
<body>


<%
/* -------- LOGIN CHECK -------- */
User user = (User) session.getAttribute("userObj");

if (user == null) {
	response.sendRedirect("user_login.jsp");
	return;
}
%>

<div class="container p-4">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card my-card">
				<div class="card-body">

					<p class="fs-3 text-center myP-color">Change Password</p>

					<%
					/* -------- SUCCESS MESSAGE -------- */
					String successMsg = (String) session.getAttribute("successMsg");
					if (successMsg != null) {
					%>
						<p class="text-center text-success fs-5"><%= successMsg %></p>
					<%
						session.removeAttribute("successMsg");
					}

					/* -------- ERROR MESSAGE -------- */
					String errorMsg = (String) session.getAttribute("errorMsg");
					if (errorMsg != null) {
					%>
						<p class="text-center text-danger fs-5"><%= errorMsg %></p>
					<%
						session.removeAttribute("errorMsg");
					}
					%>

					<form action="<%=request.getContextPath()%>/userChangePassword" method="post">

						<div class="mb-3">
							<label class="form-label">Enter New Password</label>
							<input name="newPassword"
								type="password"
								class="form-control"
								required>
						</div>

						<div class="mb-3">
							<label class="form-label">Enter Old Password</label>
							<input name="oldPassword"
								type="password"
								class="form-control"
								required>
						</div>

						<input type="hidden"
							name="userId"
							value="<%= user.getId() %>">

						<button type="submit"
							class="btn my-bg-color text-white col-md-12">
							Change Password
						</button>

					</form>

				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>