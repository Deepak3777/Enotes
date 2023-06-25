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
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<%@ include file="allcomponents/allcss.jsp" %>
<%@ include file="allcomponents/navbar.jsp" %>
<body>
<div class="card py-5">
<div class="card-body text-center">

<img alt="" src="img/paper.png" class="img-fluid mx-auto" style="mx-width :300px">
<h1>START TAKING YOUR NOTES</h1>
<a href="addnote.jsp" class="btn btn-outline-primary">click here</a>


</div>

</div>
<br><br>
<%@ include file="allcomponents/footer.jsp" %>

</body>
</html>