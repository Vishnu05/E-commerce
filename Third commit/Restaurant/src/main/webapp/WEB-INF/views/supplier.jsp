  <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Supplier</title>
<style> 
input[type=submit],delete,UPDATE {
    background-color: 	#40E0D0;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>

</head>
<body>
<%@ include file="header.jsp" %>
<form:form action="AddSupplier"  modelAttribute="supplier">
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
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
	
</table>
 </form:form>
 
	
<table cellspacing="2" align="center">
<tr bgcolor="voilet">
	<td>Supplier Id</td>
	<td>Supplier Name</td>
	<td>Supplier Address</td>
	<td>Operation</td>
	</tr>
	
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="">
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName} </td>
		<td>${supplier.supplierAdd}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.supplierId}"/>">Delete</a>/
			<a href="<c:url value="updateSupplier/${supplier.supplierId}"/>">Update</a>
		</td>	
	
	</tr>
 </c:forEach>
 
 </table>
 
 
 
 </body>
 </html>
