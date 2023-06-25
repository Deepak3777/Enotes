<%@page import="com.enotes.Beans.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
  <a class="navbar-brand" href="#"><i class="fa fa-book" aria-hidden="true"></i> E Notes</a>
  

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="home.jsp"><i class="fa fa-home" aria-hidden="true"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addnote.jsp"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="notes.jsp" tabindex="-1" aria-disabled="true"><i class="fa fa-address-book" aria-hidden="true"></i> Show Notes</a>
      </li>
    </ul>
    
    <% 
    User u=(User)session.getAttribute("User");
    if(u!=null){%>
    <form class="form-inline my-2 my-lg-0">
      <a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal" type="submit"><i class="fa fa-user" aria-hidden="true"></i> <%=u.getFname() %></a>
      <a href="http://localhost:8081/enotes/Logout" class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
      
    </form>
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container-container text-center">
        <i class="fa fa-user fa-3x"></i>
        <table class="table">
        <tbody>
        <tr>
        <td>UserId</td>
        <td><%=u.getId() %></td>
        </tr>
        
        <tr>
        <td>User Name</td>
        <td><%=u.getFname() %></td>
        </tr>
        
        <tr><td>User E-mail</td><td><%=u.getMail() %></td>
        </tr>
        
        </tbody>
        </table>
        <div>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
        </div>
        
    
    <%}else{ %>
    <form class="form-inline my-2 my-lg-0">
      <a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
      <a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
      
    </form>
    <%} %>
  </div>
  
  
  
 


        
        
        
        </div>
      </div>
      
    </div>
  </div>
</div>
</nav>

</body>
</html>