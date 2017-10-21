<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Supplier</title>
</head>
<body>
<%@ include file="header.jsp" %>

<form:form action="${pageContext.request.contextPath}/updatesupplier" modelAttribute="supplier" method="post">

 <table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h1>Supplier Module</h1></td>
	</tr>
	<tr>
		<td>Supplier ID</td>
		 <td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		 <td><form:input path="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Address</td>
		 <td><form:input path="supplierAdd"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateSupplier"/></center>
		</td>
	</tr>
	
</table>
 </form:form>
 </body>
 </html>
 