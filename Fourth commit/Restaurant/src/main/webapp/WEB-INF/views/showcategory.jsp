 <%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
 
  
</style>

</head>
<body>
<%@ include file="header.jsp" %>
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
			<a href="<c:url value="deleteCategory/${category.catId}"/>"><i class="fa fa-trash-o fa-3x"></i></a>
			<a href="<c:url value="updateCategory/${category.catId}"/>"><i class="fa fa-pencil-square fa-3x"></i></a>
		</td>
	</tr>
</c:forEach>

</table>
 </body>
 </html>
 
 