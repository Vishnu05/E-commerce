 <%@ page language="java" contentType="text/html"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp"%>
<html lang="en">
<head>
<title>Restaurant</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	 <h3 style="font-family:Bell MT;color:white;">OrderDetails</h3>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartid}')">
	 
	 <div >
        <table class="table table-bordered" style="font-family:Bell MT;color:white;" >
		  <thead>
			  <tr>
			  <th>Product</th>
				<th>Unit Price</th>
				<th>Quantity</th>
				
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
						<td>{{cartitems.cartid}}</td>
						<td>{{cartitems.price}}</td>
						<td>{{cartitems.quantity}}</td>
						
					</tr>
			 <tr>
                    <td></td>
        
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>${grandtotal }</td>
                </tr> 
			</tbody> 
		  </table>
			  

         	  
			
        </div>
		</div>     


		  
		  
 <a href="confirmorder"><button type="button" class="btn btn-primary" >Confirm order</button></a>
        <a href="cancelorder"><button type="button" class="btn btn-primary" >cancel order</button></a>
        
       
</body>
</html>
 