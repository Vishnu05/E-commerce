 <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Category</title>
</head>
<body>
<%@ include file='header.jsp' %>
<!-- <form action="AddCategory" method="post">-->

<form:form action="AddCategory"  commandName="category">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2"><h1>Category Module</h1></td>
	</tr>
	<br>
	<tr>
		<td>Category ID</td>
		 <td><form:input path="catId"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		 <td><form:input path="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		 <td><form:input path="catDesc"/></td>
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
	<td>Category ID</td>
	<td>Category Name</td>
	<td>Category Description</td>
	<td>Operation</td>
</tr>
<c:forEach items="${categoryList}" var="category">
	<tr bgcolor="">
		<td>${category.catId}</td>
		<td>${category.catName}</td>
		<td>${category.catDesc}</td>
		<td>
			<a href="<c:url value="deleteCategory/${category.catId}"/>">Delete</a>/
			<a href="<c:url value="updateCategory/${category.catId}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>

</body>
</html>