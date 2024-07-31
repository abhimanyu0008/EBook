<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<div class"container-fluid" style="height: 10px; background-color: blue"></div>
<nav class="navbar bg-body-tertiary">
	<div class="container-fluid p-3">
		<div class="row text-success">
			<!--  	<div class="col-md-3"> -->
			<h3>
				<i class="fa-solid fa-book-open"></i> Ebook
			</h3>
		</div>
		<form class="d-flex" role="search">
			<input class="form-control me-2" type="search" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-primary" type="submit">Search</button>
		</form>

		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a href="#" class="btn btn-success">${userobj.name}</a>
				<a href="../logout" class="btn btn-primary">Logout</a>
				<!--  <a data-toggle="modal" data-target="#exampleModal" class="btn btn-primary">Logout</a>-->
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success">Login</a>
				<a href="../register.jsp" class="btn btn-primary">Register</a>

			</c:if>

		</div>
	</div>
	<!-- </div> -->
</nav>

<!-- Logout Model -->
<!-- Button trigger modal -->

<!-- Modal
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">...</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Logout</button>
			</div>
		</div>
	</div>
</div>
 -->
<!-- Logout Model -->


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"><i
						class="fa-solid fa-house"></i> Home</a></li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-light" type="submit">
					<i class="fa-solid fa-address-book"></i> Contact Us
				</button>
				<button class="btn btn-light" type="submit">
					<i class="fa-solid fa-gear"></i> setting
				</button>
			</form>
		</div>
	</div>
</nav>