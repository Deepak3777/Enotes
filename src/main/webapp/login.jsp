<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<%@ include file="allcomponents/allcss.jsp" %>

<body>
<%@ include file="allcomponents/navbar.jsp" %>

<div class="container-fluid div-color">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
			<div class="card-header text-center text-white bg-custom">
			<i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
			<h4>Login</h4>
			</div>
			<%
			String s3=(String)session.getAttribute("add-note-error");
			if(s3!=null){
			%>
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <%= s3 %>
			</div>			
			<%} %>
			<%
			String s2=(String)session.getAttribute("log-out");
			if(s2!=null){
			    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

			%>
			<div class="alert alert-success alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <%= s2 %>
			</div>				
			<%} %>
			<% 
			String s=(String)session.getAttribute("f1-msg");
			if(s!=null){%>
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <%= s %>
			</div><%}%>
			<% 
			String s1=(String)session.getAttribute("s1-msg");
			if(s1!=null){%>
			<div class="alert alert-success alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <%= s1 %>
			</div><%}%>
			<div class="card-body">
			<form action="LogIn" method="post">
    
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="mail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
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