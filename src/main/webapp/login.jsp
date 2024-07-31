<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook:Login</title>
<%@include file="all_components/allCss.jsp"%>
</head>
<body style="background-color: #C2C0C0">
	<%@include file="all_components/navbar.jsp"%>

		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-body">
							<h5 class="text-center">Login</h5>
							<c:if test="${not empty failMsg }">
							<h4 class="text-center text-danger">${failMsg}</h4>
							<c:remove var="failMsg" scope="session"/>
							</c:if>
							
							
							<form action="login" method="post">
								<div class="mb-3">
									<label for="exampleInputEmail1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										required="required" name="email">
									<div id="emailHelp" class="form-text">We'll never share
										your email with anyone else.</div>
								</div>
								<div class="mb-3">
									<label for="exampleInputPassword1" class="form-label">Password</label>
									<input type="password" class="form-control"
										id="exampleInputPassword1" required="required" name="password">
								</div>
								<div class="mb-3 form-check">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Check me out</label>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary"
										formaction="login">Login</button>
									<br> <a href="register.jsp">Create Account</a>
								</div>

							</form>
						</div>
					</div>
				</div>

			</div>
		</div>

</body>
</html>