<%@page import="com.enotes.Beans.note"%>
<%@page import="com.enotes.Model.Notedao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
     response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

    User u1=(User)session.getAttribute("User");
    if(u1==null){
    	response.sendRedirect("login.jsp");
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit notes</title>
<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>
<div class="container-fluid"> 
<%@include file="allcomponents/navbar.jsp" %>
<% String s1=(String)session.getAttribute("unsuc1-msg"); 
if(s1!=null){
%>
	<div class="alert alert-danger" role="alert"><%= s1 %></div>
<%} %>
<h1 class="text-center">Edit Notes</h1>
<div class="row">
<div class="col-md-12">
<% int nid=Integer.parseInt(request.getParameter("nid"));
	Notedao n1=new Notedao();
	note n2=n1.fetchnotebyid(nid);
	
%>

<form action="Editnote" method="post">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Title</label>
  <input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="Enter title here" value="<%= n2.getTitle()%>"  >
</div>
<input type="hidden" name="noteid"value="<%= nid%>">
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Description</label>
  <textarea type="text" class="form-control" name="desc" id="exampleFormControlTextarea1" rows="9" ><%=n2.getDesc() %></textarea>
</div>
<div class="text-center">
<button class="btn btn-primary" type="submit">Save Note</button>
</div>

</form>
</div>
</div>
</div>
<br><br>
<%@ include file="allcomponents/footer.jsp" %>
</body>
</html>