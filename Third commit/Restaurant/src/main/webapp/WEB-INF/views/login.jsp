   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content=z"text/html; charset=ISO-8859-1">

<title>Login</title>
</head>
<body>
 <%@ include file='header.jsp' %>
<div class="container">
 
<h1>Login</h1>
<div class="col-lg-6">
<div class="row">
<spring:form modelAttribute="user" action="SaveRegister" method="post">
<div class="col-lg-6">

 
<div class="form-group">
<label>Username</label>
<input path="role" placeholder="mail id or phoneNo" class="form-control"/>
</div>


<div class="form-group">
<label>Password</label>
<input type="password" placeholder="password" class="form-control"/>
</div>

<div class="container">
  <button type="button" class="btn btn-primary">Login</button>
</div>

</div>
</spring:form>

</div>
</div>
</div>
<%@ include file='footer.jsp' %>
</body>
</html>