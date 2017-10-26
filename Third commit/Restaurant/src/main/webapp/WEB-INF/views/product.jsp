 <%@ page language="java" import="Vishnu.Model.Product" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<form:form method="POST" action="InsertProduct" modelAttribute="product" enctype="Multipart/form-data">

<table align="center">
	<tr>
		<td colspan="2">Product Detail</td>
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
		<td><form:textarea path="productDesc"/></td>
	</tr>
	<tr>
		<td>Product Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input path="price"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td>
			<form:select path="catId">
				<form:option value="0" label="---Select---"/>
				<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage" /></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
	
	<a href="showproduct">Show product</a>
	
</table>
</form:form>



</body>
</html>