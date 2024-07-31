<%@page import="java.util.List"%>
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
<title>Admin:EditBook</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<h2 class="text-center">Edit Books</h2>
	<c:if test="${not empty sucMsg}">
		<p class="text-center text-success">${sucMsg }</p>
		<c:remove var="sucMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<table class="table table-striped">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Image</th>
				<th scope="col">Book name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Categories</th>
				<th scope="col">status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list = dao.getAllBooks();
			for (BookDetails b : list) {
			%>

			<tr>
				<td><%=b.getBookId()%></td>
				<td><img alt="" src="../Rbook/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px;"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="edit_book.jsp?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-primary">Edit</a> 
					<a href="../delete?id=<%=b.getBookId()%>"
					class="btn btn-sm btn-danger">Delete</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>

</body>
</html>