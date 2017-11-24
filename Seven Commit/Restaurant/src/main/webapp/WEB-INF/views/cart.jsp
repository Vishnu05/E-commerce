<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ page language="java" contentType="text/html"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<script>
$(document).ready(function () {
    update_amounts();
    // Fix: Invalid selector for the select fields
    $('select[name=qty]').change(update_amounts);
});
function update_amounts() {
    var sum = 0.0;
    $('#cart > tbody  > tr').each(function () {
        var qty = $(this).find('option:selected').val();
        // Fix: price is in text, not in a form field
        // and it must be cleaned from the pound sign
        var uname = $(this).find('option:selected').val();
        var pname = $(this).find('#pn').text();
        var cid = $(this).find('#iid').text();
        var price = $(this).find('.price').text().replace(/[^\d.]/, '');
        var amount = (qty * price);
        sum += amount;
        $(this).find('.subtotal').text('Rs.'+ amount);
        
    });
    $("a").click(function(){
    	$("#w3s").attr("href", "placeorder/"+sum);
    });
    //just update the total to sum  
    $('.total').text('Rs.' + sum);
    
    
}
 </script>
<html> 

 
<body>
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
					
					 <c:forEach items="${cartitems}" var="cartitem">
						<tr>
						   	<td data-th="Product">
							
								<div class="row">
									
									<div class="col-sm-10">
									    <h3 class="hidden" id="iid"> ${cartitem.citemid}</h3>
										<h4 class="nomargin" id="pn">${cartitem.productName}</h4>
									</div>
								</div>
							</td>
							<td data-th="Price"><span id="price" class="price">${cartitem.price}</span></td>
							<td data-th="Quantity">
							<select class="form-control" name="qty" id="quantity"> 
							        <option selected="selected">${cartitem.quantity}</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                              		<option value="4">4</option>
                   					<option value="5">5</option>
                   					<option value="5">6</option>
                   					<option value="5">7</option>
                   					<option value="5">8</option>
                   					<option value="5">9</option>
                   					<option value="5">10</option>
                			</select>
                			<span class="status"></span>
							 </td>
							<td data-th="Subtotal" class="text-center" id="amount"><span id="subtotal" class="subtotal"><i class="fa fa-inr" aria-hidden="true"></i>0</span></td>
							<td class="actions" data-th="">
								<a href="<c:url value="/deleteCartItem/${cartitem.citemid}"/>"><i class="fa fa-trash-o"></i></a>	
												
							</td>
							
						</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong></strong></td>
						</tr>
						<tr>
							<td><a href="productdisplay" ><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total:</strong><td class="total"></td>
							
							<td><a href="orderconfirm">Checkout</a></td>
						</tr>
					</tfoot>
				</table>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp" %>
</body>
</html>