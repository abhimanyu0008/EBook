<div class"container-fluid" style="height:10px; background-color:blue"></div>

<nav class="navbar bg-body-tertiary">
  <div class="container-fluid p-3">
  	<div class="row text-success">
  	<!--  	<div class="col-md-3"> -->
  		<h3><i class="fa-solid fa-book-open"></i> Ebook</h3>
  	 	</div>
	    <form class="d-flex" role="search">
	      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-primary" type="submit">Search</button>
	    </form>
	    
	    <div class="col-md-3">
	    	<a href="login.jsp"class="btn btn-success">Login</a>
	    	
	    	<a href="register.jsp" class="btn btn-primary">Register</a>
	    </div>
 	 </div>
 <!-- </div> -->
</nav>


<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp"><i class="fa-solid fa-house"></i> Home</a>
        </li>
        <li class="nav-item"><a class="nav-link active" href="all_recentbook.jsp"><i class="fa-solid fa-book-open"></i> recent book </a> </li>
        <li class="nav-item"><a class="nav-link active" href="all_newbook.jsp"><i class="fa-solid fa-book-open-reader"></i> new Book </a> </li>
         <li class="nav-item"><a class="nav-link active" href="all_oldbook.jsp"><i class="fa-regular fa-bookmark"></i> old Book </a> </li>
        
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-light" type="submit"><i class="fa-solid fa-address-book"></i> Contact Us</button>
        <button class="btn btn-light" type="submit"><i class="fa-solid fa-gear"></i> setting</button>
      </form>
    </div>
  </div>
</nav>