<%@page import="com.dev.beans.Admin"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Bus</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<jsp:include page="navBarAdmin.jsp"></jsp:include>
<body>

<% Admin admin = (Admin)session.getAttribute("admin");
	if(admin != null){
		out.print("<h2>Hello " + admin.getAdminId() +"</h2>");
	}else{
		response.sendRedirect("./adminlogin");
	}
%>
<div class="col-md-4 offset-4 mt-4 card">
		<div class="card-body">
			<h1 class="h1 text-center">Add Bus</h1>
			<form action="./addBus" method="post">

				<label for="busid">Bus Id</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busId" required>
				</div>
				<label for="busname">Bus Name</label>
				<div class="form-group">
					<input type="text" class="form-control" name="busName" required>
				</div>

				<label for="bustype">Bus Type</label>
				<div class="form-group">

					<input type="text" class="form-control" name="busType" required>

				</div>
				<label for="Source">Source</label>
				<div class="form-group">
					<input type="text" class="form-control" name="source" required>
				</div>
				<label for="destination">Destination</label>
				<div class="form-group">
					<input type="text" class="form-control" name="destination" required>
				</div>
				<label for="totalseats">Total Seats</label>
				<div class="form-group">
					<input type="text" class="form-control" name="totalSeats" required>
				</div>
				<label for="price">Price</label>
				<div class="form-group">
					<input type="text" class="form-control" name="price" required>
				</div>
				<div class="form-group">
					<button class="btn btn-info float-right">Add</button>
				</div>
				
			</form>
	</div>
</div>
	<center><h4>${msg}</h4></center>
			

</body>
</html>