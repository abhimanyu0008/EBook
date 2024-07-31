<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin :Add books</title>
<%@include file="allCss.jsp"%>
</head>
<body background="">
	<h2>Add book</h2>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add books</h4>
						
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success">${sucMsg }</p>
							<c:remove var="sucMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
						
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Books
										Name </label> <input type="text" class="form-control" name="bname"
										id="exampleFormControlInput1" placeholder="name">
								</div>

								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Author
									</label> <input type="text" class="form-control" name="author"
										id="exampleFormControlInput1" placeholder="Author">
								</div>

								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Price
									</label> <input type="number" class="form-control" name="price"
										id="exampleFormControlInput1" placeholder="price">
								</div>

								<div class="mb-3">
									<label for="inputState" class="form-label">Book
										Categories </label> <select id="inputState" name="bcategory"
										class="form-control">
										<option selected>....selected...</option>
										<option selected>new Book</option>
									</select>
								</div>

								<div class="mb-3">
									<label for="inputState" class="form-label">Book status
									</label> <select id="inputState" name="bstatus" class="form-control">
										<option selected>....selected...</option>
										<option selected>Active</option>
										<option selected>Inactive</option>
									</select>
								</div>

								<div class="mb-3">
									<label for="formFile" class="form-control-file">Upload
										photo</label> <input class="form-control" type="file" name="bimg"
										id="formFile">
								</div>
								<button type="submit" class="btn btn-primary">Add</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>