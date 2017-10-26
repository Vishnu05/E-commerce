    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    import="Vishnu.Model.Register"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Register</title>
</head>

<style>
body, html {
    height: 100%;
    margin: 0;
}

body {
    /* The image used */
    background-image: url(" ");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

 input[type=submit] {
    background-color: #00BFFF;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>


<body>
<%@ include file='header.jsp' %>
<div class="container">
<h1>Create Account</h1>
<div class="col-lg-6">
<div class="row">
<form:form action="AddRegister" modelAttribute="register"  method="POST">
<div class="col-lg-6">

<div class="form-group">
<label>Name</label>
<form:input path="name" type="text" placeholder="Enter the Name" class="form-control"/>
</div>


<div class="form-group">
<label>UserName</label>
<form:input path="userId" placeholder="Enter Username" class="form-control"/>
</div>

<div class="form-group">
<label>Email</label>
<form:input path="email" placeholder="Enter email id" class="form-control"/>
</div>

<div class="form-group">
<label for="pwd">Password</label>
<form:input path="password" type="password" placeholder="Atleast 8 character" class="form-control"/>
</div>


<div class="form-group">
<label>Phone</label>
<form:input path="phoneNo" type="number" placeholder="Mobile number" pattern="[789][0-9]{9}" class="form-control"/>
</div>

<div class="form-group">
<label>DOB</label>
  <form:input path="dob" type="datetime-local" name="bdaytime" class="form-control" />
 </div> 

 
<div class="form-group">
<label>Gender</label>
  <form>
  <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other  
 </form> </div>


<div class="form-group">
<label>Address</label>
<form:input path="Address" type="text" placeholder="Address" class="form-control"/>
</div>

 <P>By clicking Create an account, you agree to our Terms and confirm that you have read our Data Policy, including our Cookie Use Policy. You may receive SMS message notifications from Restaurant and can opt out at any time</P>

<div class="container">
<input type="submit" value="SignUp"/>
</div>

</div>

</form:form>

</div>
</div>
</div>
<%@ include file='footer.jsp' %>
</body>
</html>