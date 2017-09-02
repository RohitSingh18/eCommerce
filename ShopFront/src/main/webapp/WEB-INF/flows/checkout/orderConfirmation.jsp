<%@include file="/WEB-INF/view/Header.jsp"%>
 <head>
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
  </head>  
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />

<div class="space"></div>
<div class="container">
	<h2 class="heading-one">Order Confirmation</h2>
	<div class="space"></div>
	<form:form modelAttribute="order">

		<div
			class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

			<div class="text-center">
				<h1>Receipt</h1>
			</div>
			<hr>
			<div class="row">
				<div class="col-xs-8 col-sm-8 col-md-8">
					<b>Name: </b>${pageContext.request.userPrincipal.name }
					<br>
					<b>Email: </b> ${order.userr.emailId }
					<br>
					<b>Mobile No: </b> ${order.userr.phoneNumber }
				</div>
				<div class="col-xs-4 col-sm-4 col-md-4 ">
					<p>
						<b>Shipping Date:</b>
						<fmt:formatDate type="date" value="${now}" />
					</p>
				</div>
			</div>
<hr>
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<address>
						<strong>Billing Address</strong><br>
						${order.userr.billingaddress.houseNo}, ${order.userr.billingaddress.streetName} <br>						
						${order.userr.billingaddress.zip} <br>
					</address>
				</div>
				<div class="col-xs-6 col-sm-6">
					<address>
						<strong>Shipping Address</strong><br>
						${order.userr.shippingaddress.houseNo}, ${order.userr.shippingaddress.streetName} <br>						
						
						${order.userr.shippingaddress.zip} <br>
					</address>
				</div>
			</div>
			<div class="row">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Product</th>
							<th class="text-center">Quantity</th>
							<th class="text-center">Price/Unit</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cartItem" items="${order.userr.cartItems}">
							<tr>
								<td class="col-md-9"><em>${cartItem.prodName}</em></td>
								<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
								<td class="col-md-1" style="text-align: center">${cartItem.price}</td>
							</tr>
						</c:forEach>

						<tr>
							<td class="text-right">
								<h4>
									<strong>Grand Total: </strong>
								</h4>
							</td>
							<td class="text-center text-danger" colspan="2">
								<h4>
									<strong>&#8377; ${totalAmount } </strong>
								</h4>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<input type="hidden" name="_flowExecutionKey" /> <br> <br>
			<button class="btn btn-outline-warning"
				name="_eventId_backToCollectShippingDetail">Back</button>
			<input type="submit" value="Submit Order"
				class="btn btn-outline-primary" name="_eventId_orderConfirmed" />
			<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
		</div>
	</form:form>
</div>

