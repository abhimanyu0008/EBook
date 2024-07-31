<%@page import="com.entity.BookDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>recent book</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">

.crd-ho:hover {
	background-color: #d5e0e6;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			<%
			BookDaoImpl dao2 = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list2 = dao2.getAllNewBook();
			for (BookDetails b2 : list2) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho mt-4">
					<div class="card-body text-center">
						<img alt="" src="Rbook/rb2.jpg" style="with: 150px; height: 200px"
							class="img.thumblin">
						<p><%=b2.getBookName()%></p>
						<p><%=b2.getAuthor()%></p>
						<p>
							<%
							if (b2.getBookCategory().equals("Old")) {
							%>
							catagries:<%=b2.getBookCategory()%></p>
						<div class="raw">
							<a href="" class="btn btn-success btn-sm">Add cart</a> <a href=""
								class="btn btn-danger btn-sm">View Detail</a> <a href=""
								class="btn btn-success btn-sm">299</a>
						</div>
						<%
						} else {
						%>

						catagries:<%=b2.getBookCategory()%></p>
						<div class="raw">
							<a href="" class="btn btn-success btn-sm">Add cart</a> <a href=""
								class="btn btn-danger btn-sm">View Detail</a> <a href=""
								class="btn btn-success btn-sm">299</a>
						</div>

						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
	</div>
</body>
</html>