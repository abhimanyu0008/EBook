<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: Register</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #EFE8E7">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card-body">
					<h4 class="text-center">Registration Form</h4>
					
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success">${sucMsg }</p>
							<c:remove var="sucMsg " scope="session"/>
						</c:if>
			
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>

					<form action="register" method="post">
						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Email
								address</label> <input type="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								required="required" name="email">
							<div id="emailHelp" class="form-text">We'll never share
								your email with anyone else.</div>

							<label class="form-label">Enter your full Name </label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" required="required" name="fname">

							<label class="form-label">Enter your number </label> <input
								type="number" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" required="required" name="phno">

						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Password</label>
							<input type="password" class="form-control" required="required"
								name="password" id="exampleInputPassword1">
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input "
								 name="check" id="exampleCheck1"> <label
								class="form-check-label" for="exampleCheck1">Agree terms
								& conditions</label>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>

				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/footer.jsp"%>
</body>
</html>