  <head>
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    
  </head>  
  <%@include file="/WEB-INF/view/Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="space"></div>
<div class="container">
	<h2 class="heading-one">Customer Details</h2>

	<form:form modelAttribute="order">

		<h3>Personal Info</h3>

		<div class="form-group">
			<label for="name">Name</label>
			<form:input path="userr.firstName" id="username" class="form-control" />
		</div>

		<div class="form-group">
			<label for="email">Email</label>
			<form:input path="userr.emailId" id="email" class="form-control" />
		</div>

		<div class="form-group">
			<label for="phone">Mobile No.</label>
			<form:input path="userr.phoneNumber" id="mobileno" class="form-control" />
		</div>

		<h3>Billing Address</h3>

		<div class="form-group">
			<label for="billingStreet">Street Name</label>
			<form:input path="userr.billingaddress.houseNo"
				id="billingStreet" class="form-control" />
		</div>

		<div class="form-group">
			<label for="billingApartmentNumber">Apartment Number</label>
			<form:input path="userr.billingaddress.city"
				id="billingApartmentNumber" class="form-control" />
		</div>

	

		<div class="form-group">
			<label for="billingZip">Zipcode</label>
			<form:input path="userr.billingaddress.state" id="billingState"
				class="form-control" />
		</div>
		
		<div class="form-group">
			<label for="billingZip">Zipcode</label>
			<form:input path="userr.billingaddress.zip" id="billingZip"
				class="form-control" />
		</div>
		

		<input type="hidden" name="_flowExecutionKey" />

		<br>
		<br>
		<input type="submit" value="Next" class="btn btn-success"
			name="_eventId_customerInfoCollected" />
		<button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
	</form:form>


</div>
