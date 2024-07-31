<%@page import="java.util.List"%>
<%@page import="com.entity.BookDetails"%>
<%@page import="com.DAO.BookDaoImpl"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="all_components/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/bg.jpg");
	height: 40vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #d5e0e6;
}
</style>

</head>
<body style="background-color: #f5edf2">
	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h2 class="text-center text-danger">EBook Management System</h2>
	</div>

	<!-- Recent Book -->

	<div class="container">
		<h3 class="text-center">Recent Book</h3>
		<div class="row">

			<%
			BookDaoImpl dao2 = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list2 = dao2.getRecentBook();
			for (BookDetails b2 : list2) {
			%>

			<div class="col-md-3">
				<div class="card crd-ho">
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
		<div class="text-center mt-3">
			<a href="all_recentbook.jsp" class="btn btn-danger btn-sm text-whiter">View All</a>
		</div>
	</div>
	<!-- End Recent Book -->
	<hr>
	<!-- New  Book -->


	<div class="container">
		<h3 class="text-center">New Book</h3>
		<div class="row">


			<%
			BookDaoImpl dao = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list = dao.getNameBook();
			for (BookDetails b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Rbook/rb6.jpg" style="with: 150px; height: 200px"
							class="img.thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							catagries:<%=b.getBookCategory()%></p>
						<div class="raw">
							<a href="" class="btn btn-success btn-sm">Add cart</a> <a href=""
								class="btn btn-danger btn-sm">View Detail</a> <a href=""
								class="btn btn-success btn-sm"><%=b.getPrice()%></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="text-center mt-3">
			<a href="all_newbook.jsp" class="btn btn-danger btn-sm text-whiter">View All</a>
		</div>
	</div>
	<!-- End New Book -->
	</hr>
	<!--Old Book -->
	<hr>

	<div class="container">
		<h3 class="text-center">Old Books</h3>
		<div class="row">
			<%
			BookDaoImpl dao3 = new BookDaoImpl(DBConnect.getConn());
			List<BookDetails> list3 = dao3.getOldBook();
			for (BookDetails b3 : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="Rbook/rb10.jpg"
							style="with: 150px; height: 200px" class="img.thumblin">
						<p><%=b3.getBookName() %></p>
						<p><%=b3.getAuthor() %></p>
						<p>catagries:<%=b3.getBookCategory() %></p>
						<div class="raw">
							<a href="" class="btn btn-danger btn-sm">View Detail</a> <a href=""
								class="btn btn-success btn-sm">299</a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			%>
		</div>
	</div>
	<div class="text-center mt-3">
		<a href="all_oldbook.jsp" class="btn btn-danger btn-sm text-whiter">View All</a>
	</div>
	<!-- End Old Book -->
	</hr>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>