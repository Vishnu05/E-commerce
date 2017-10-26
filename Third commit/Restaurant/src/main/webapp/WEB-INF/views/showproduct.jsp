 <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product Name</td>
	<td>Price</td>
	<td>Category</td>
	<td>Stock</td>
	<td>Photo</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productName}</td>
		<td>${product.price}</td>
		<td>${product.catId}</td>
		<td>${product.stock}</td>
		<td>
		<a href="productDesc/${product.productId}">
		<img src="<c:url value="/images/${product.productId }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/>
		</td>
		<td>
			<a href="<c:url value="deleteproduct/${product.productId}"/>">Delete</a>/
			<a href="<c:url value="updateproduct/${product.productId}"/>">UPDATE</a>
		</td>
		</a>
	</tr>
</c:forEach>
</table>
</body>
</html>