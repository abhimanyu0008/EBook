<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-dacoration: none;
	color: black
}

a:hover {
	text .decoration: none;
	color: black;
}
</style>

</head>
<body>
	<h1>Admin: home</h1>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i>
							<h4>Add Books</h4>
							.................
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-2">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-danger"></i>
							<h4>All Books</h4>
							.................
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-2">
				<a href="all_orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-success"></i>
							<h4>Orders</h4>
							.................
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-2">
				<div class="card">
					<div class="card-body text-center">
						<i class="fas fa-sign-out-alt fa-3x"></i>
						<h4>Logout</h4>
						.................
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>