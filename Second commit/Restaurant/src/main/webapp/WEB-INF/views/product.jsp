  <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Product</title>
</head>
<body>
<%@ include file='header.jsp' %>
<!-- <form action="AddProduct" method="post">-->

<form:form action="AddProduct"  modelAttribute="product">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h1>Product Module</h1></td>
	</tr>
	<tr>
		<td>Product ID</td>
		 <td><form:input path="productId"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		 <td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		 <td><form:input path="productDesc"/></td>
	</tr>
	
		<tr>
		<td>Stock</td>
		 <td><form:input path="stock"/></td>
	</tr>
		<tr>
		<td>Category Id</td>
		 <td><form:input path="catId"/></td>
	</tr>
	
		<tr>
		<td>Supplier Id</td>
		 <td><form:input path="supplierId"/></td>
	</tr>
	
		<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>
	
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="voilet">
	<td>Product Id</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Stock</td>
	<td>Category Id</td>
	<td>Supplier Id</td>
	<td>Price</td>
	<td>Operation</td>
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.catId}</td>
		<td>${product.supplierId}</td>
		<td>${product.price}</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.productId}"/>">Delete</a>/
			<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>

</body>
</html>