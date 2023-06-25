<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.back-img{
	background:url("img/bookpen.jpg");
	background-size: cover;
  background-position: left;
  background-repeat: no-repeat;
  height: 75vh;
  width: 100%;
  
}

</style>

<title>Index Page</title>
<%@ include file="allcomponents/allcss.jsp" %>

</head>
<body>
<%@ include file="allcomponents/navbar.jsp" %>
<div class="container-fluid back-img">

<div class="text-center">
<h1 class="text-white "><i class="fa fa-book" aria-hidden="true"></i> E-Notes Save your notes.</h1>
<a href="login.jsp" class="btn btn-light"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
</div>
</div>

<%@ include file="allcomponents/footer.jsp"%>
</body>
</html>