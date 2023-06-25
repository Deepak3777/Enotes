<%@page import="com.enotes.Beans.note"%>
<%@page import="java.util.List"%>
<%@page import="com.enotes.Model.Notedao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
     <%
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

    User u1=(User)session.getAttribute("User");
    if(u1==null){
    	response.sendRedirect("login.jsp");
    }else{
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcomponents/allcss.jsp" %>
</head>
<body>
<%@ include file="allcomponents/navbar.jsp" %>
<% User u3=(User)session.getAttribute("User"); 
   Notedao n1=new Notedao();
   List<note>lnotes=n1.fnote(u3.getId());
%>

<div class="container">
<% String s1=(String)session.getAttribute("suc2-msg"); %>
<% if(s1!=null){ %>
	<div class="alert alert-success" role="alert"><%= s1 %></div>
	<%} %>
<% String s2=(String)session.getAttribute("suc-msg3"); 
 if(s2!=null){ %>
	<div class="alert alert-success" role="alert"><%= s2 %></div>
	<%} %>
	<% String s3=(String)session.getAttribute("fl-msg2"); 
 if(s3!=null){ %>
	<div class="alert alert-danger" role="alert"><%= s2 %></div>
	<%} %>
<h2 class="text-center">All Notes :</h2>
<div class="row">
<div class="col-md-12">
<% for(note n :lnotes){%>
	<div class="card mt-3">

	<img alt="" src="img/paper.png" class="card-img-top mt-2 mx-auto" style="max-width:100px">

	<div class="card-body p-4">
	<h5 class="card-title"><%=n.getTitle() %></h5><p><%=n.getDesc() %></p>..
	<p>
	<b class="text-success">Publish by :</b><b class="text-primary"><%= u3.getFname() %>
	</b><br>
	<b class="text-success">Date :</b><b class="text-primary"><%= n.getNdate() %>
	</b><br>
	</p>
	<div class="container text-center mt-2">
	<a href="edit.jsp?nid=<%=n.getId() %>" class="btn btn-primary">Edit</a>

	<a href="Deleteservlet?nid1=<%= n.getId() %>" class="btn btn-danger">Delete</a>


	</div>
	</div>

	</div>



<% }%>
<%} %>


</div>

</div>
</div>

</body>
</html>