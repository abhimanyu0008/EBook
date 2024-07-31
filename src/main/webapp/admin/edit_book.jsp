<%@page import="com.entity.BookDetails"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin :Edit Book</title>
<%@include file="allCss.jsp"%>
</head>
<body background="">
	<h2>Add book</h2>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Book</h4>
						
					
						<%
						int id=Integer.parseInt(request.getParameter("id"));
						BookDaoImpl dao=new BookDaoImpl(DBConnect.getConn());
						BookDetails b=dao.getBookById(id);
						%>
						
						<form action="../editbook" method="post"
							enctype="multipart/form-data">
							
							<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Books
										Name </label> <input type="text" class="form-control" name="bname"
										id="exampleFormControlInput1" placeholder="name" 
										value="<%=b.getBookName()%>">
								</div>

								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Author
									</label> <input type="text" class="form-control" name="author"
										id="exampleFormControlInput1" placeholder="Author"
										value="<%=b.getAuthor()%>">
								</div>

								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Price
									</label> <input type="number" class="form-control" name="price"
										id="exampleFormControlInput1" placeholder="price"
										value="<%=b.getPrice()%>">
								</div>
								
								<div class="mb-3">
									<label for="inputState" class="form-label">Book status</label> 
									<select id="inputState" name="bstatus" class="form-control">
									
									<%
									if("Active".equals(b.getStatus())){
									%>
									<option value="Inactive">Inactive</option>
									<% 
									}else{%>
									<option selected>Inactive</option>
									<%}
									%>
									</select>
								</div>

								<button type="submit" class="btn btn-primary">Update</button>

							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>