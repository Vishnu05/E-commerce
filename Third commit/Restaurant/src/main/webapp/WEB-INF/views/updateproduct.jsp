  <%@ page language="java" contentType="text/html" import="Vishnu.Model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Category-FashionFrontend</title>
</head>
<body>
<%@ include file="header.jsp" %>

 <form:form action="${pageContext.request.contextPath}/updateproduct" modelAttribute="product" enctype="Multipart/form-data" method="post">
 
 <table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h3>Product Module</h3></td>
	</tr>
	<tr>
		<td>Product ID</td>
		 <td><form:input path="productId"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		 <td><form:textarea path="productName"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		 <td><form:input path="productDesc"/></td>
	</tr>
	
		<tr>
		<td> Product Stock</td>
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
		<td>Supplier Id</td>
		 <td><form:input path="supplierId"/></td>
	</tr>
	
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage" /></td>
	</tr>
		
	
	<tr>
		<td colspan="2">
			<center><input type="submit" value="updateproduct"/></center>
		</td>
	</tr>
</table>
 
 
 </form:form>
 
  
</body>
</html>