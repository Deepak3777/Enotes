<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<%@ include file="allcomponents/allcss.jsp" %>

<body>
<%@ include file="allcomponents/navbar.jsp" %>

<div class="container-fluid div-color">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
			<div class="card-header text-center text-white bg-custom">
			<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
			<h4>Registration</h4>
			</div>
			<% 
			String s=(String)session.getAttribute("s-msg");
			if(s!=null){%>
				<div class="alert alert-success" role="alert"><%=s %>
				</div>
			<%}%>
			
			<% 
			String s1=(String)session.getAttribute("f-msg");
			if(s1!=null){%>
				<div class="alert alert-danger" role="alert"><%=s1 %>
				</div>
			<%}%>
			
			<div class="card-body">
			<form action="Register" method="post">
 <div class="form-group">
    <label for="exampleInputEmail1">Full Name</label>
    <input type="text" name="fname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Full Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="mail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Submit</button>
</form>
</div>
</div>
</div>
</div>
<br>
<br>
<%@ include file="allcomponents/footer.jsp"%>

</body>
</html>