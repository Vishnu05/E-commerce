    <!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Restaurant</title>
</head>
  <body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
       
    </div>
    
   
<c:if test="${sessionScope.userId != null}">

<c:if test="${sessionScope.role == 'Role_Admin'}">
 
 <ul class="nav navbar-nav">
  <li><a href="adminhome">Admin Page</a>
 <li><a href ="Category">Category</a></li>
<li><a href ="product">Product</a></li>
<li><a href="showproduct">Show Product</a>
<li><a href ="supplier">Supplier</a></li>
</ul>
   <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value = "/perform_logout"/>"><span class="glyphicon glyphicon-log-out"></span> logout</a></li></ul>
 
 </c:if>
 <c:if test="${sessionScope.role == 'Role_User'}">
 
 <ul class="nav navbar-nav">
                    <li><a class="active" href="Home">Home</a></li>
                   <li><a href="aboutus">About us</a></li></ul>
                   
                	<ul class="nav navbar-nav navbar-right">
                	<li><a href="productdisplay">Product</a> </li>
       <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>    
       <li>Welcome${userId}</li>    	
      <li><a href="<c:url value = "/perform_logout"/>"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
      </c:if>
                     </c:if>
 
                
    			<c:if test="${sessionScope.userId == null}">
  <ul class="nav navbar-nav">
  
</ul>
   <ul class="nav navbar-nav navbar-right">
      <li><a href="<c:url value = "login"/>"><span class="glyphicon glyphicon-log-out"></span>Sign In</a></li></ul>
    			
				</c:if>
         
   
  </div>
</nav>

  

 
  
 <body>
<p></p>
</body>
</html>


 