 <%@ page language="java" import="Vishnu.Model.Product" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<table>

<tr>
		<td rowspan="5">
			<img src="<c:url value="/images/${product.productId}.jpg"/>"/>
		</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>Product ID :${product.productId}</td>
	</tr>
	<tr>
		<td>Product Name:${product.productName}</td>
	</tr>
	<tr>
		<td>Product Desc:${product.productDesc}</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>



</table>



</body>
</html>