 <%@ page language="java" contentType="text/html"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="userheader.jsp"%>
<table cellspacing="3" align="center" >
<tr>
<div class="container">
<table class="table table-bordered">
<td colspan="5"><center><h3>Shopping Cart</h3></center></td>
</tr>
<tr>
<tr bgcolor="#f0c2ff">
<td><b>Product Name</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>Quantity</b>&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><b>SubTotal</b>&nbsp;&nbsp;&nbsp;</td>
<td><b>Image</b></td>
</tr>
<tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
<td>${cartitem.prodname}</td>

<td><input type="text" value="${cartitem.quantity }" name="quantity" required/></td>
<td>${cartitem.price * cartitem.quantity }</td>
<td><img src="<c:url value='/resources/images/${cartitem.prodid}.jsp'/>" width="100" height="100">
</tr>
</c:forEach>
<tr>
<td colspan="3">Grand Total</td>
<td>${grandtotal }</td>
</tr>
</table>




<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp" %>
</body>
</html>