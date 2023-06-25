<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
 <%
 response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

    User u2=(User)session.getAttribute("User");
    if(u2==null){
    	response.sendRedirect("login.jsp");
    	session.setAttribute("add-note-error", "login first");
    }else{   
    %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>

<%@include file="allcomponents/allcss.jsp" %>
</head>
<body>
<div class="container-fluid">
<%@include file="allcomponents/navbar.jsp" %>
<h1 class="text-center">Add Notes</h1>
<div class="row">
<div class="col-md-12">

<form action="Addnote" method="post">

<div class="form-group">

<input type="hidden" name="uid" value=<%=u2.getId() %>>
  <label for="exampleFormControlInput1" class="form-label">Title</label>
  <input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="Enter title here">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">Description</label>
  <textarea type="text" class="form-control" name="desc" id="exampleFormControlTextarea1" rows="9"></textarea>
</div>
<div class="text-center">
<button class="btn btn-primary" type="submit">Add Note</button>
</div>

</form>
</div>
</div>
</div>
<br><br>
<%} %>
<%@ include file="allcomponents/footer.jsp" %>
</body>
</html>