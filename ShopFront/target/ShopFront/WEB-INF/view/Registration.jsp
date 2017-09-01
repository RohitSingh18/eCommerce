<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Registration Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        @import "font-awesome.min.css";
@import "font-awesome-ie7.min.css";
/* Space out content a bit */
body {
  padding-top: 20px;
  padding-bottom: 20px;
}

/* Everything but the jumbotron gets side spacing for mobile first views */
.header,
.marketing,
.footer {
  padding-right: 15px;
  padding-left: 15px;
}

/* Custom page header */
.header {
  border-bottom: 1px solid #e5e5e5;
}
/* Make the masthead heading the same height as the navigation */
.header h3 {
  padding-bottom: 19px;
  margin-top: 0;
  margin-bottom: 0;
  line-height: 40px;
}

/* Custom page footer */
.footer {
  padding-top: 19px;
  color: #777;
  border-top: 1px solid #e5e5e5;
}

/* Customize container */
@media (min-width: 768px) {
  .container {
    max-width: 730px;
  }
}
.container-narrow > hr {
  margin: 30px 0;
}

/* Main marketing message and sign up button */
.jumbotron {
  text-align: center;
  border-bottom: 1px solid #e5e5e5;
}
.jumbotron .btn {
  padding: 14px 24px;
  font-size: 21px;
}

/* Supporting marketing content */
.marketing {
  margin: 40px 0;
}
.marketing p + h4 {
  margin-top: 28px;
}

/* Responsive: Portrait tablets and up */
@media screen and (min-width: 768px) {
  /* Remove the padding we set earlier */
  .header,
  .marketing,
  .footer {
    padding-right: 0;
    padding-left: 0;
  }
  /* Space out the masthead */
  .header {
    margin-bottom: 30px;
  }
  /* Remove the bottom border on the jumbotron for visual effect */
  .jumbotron {
    border-bottom: 0;
  }
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<sp:form action="${pageContext.request.contextPath}/save" method="POST" modelAttribute="user">
			
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
							<sp:label path="firstName" >First Name</sp:label>
								<sp:input type="text" path="firstName" placeholder="Enter First Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-6 form-group">
								<sp:label path="lastName">Last Name</sp:label>
								<sp:input type="text" path="lastName" placeholder="Enter Last Name Here.." class="form-control"/>
							</div>
							<div class="form-group">
						<sp:label path="phoneNumber">Phone Number</sp:label>
						<sp:input type="text" path="phoneNumber" placeholder="Enter Phone Number Here.." class="form-control"/>
					</div>		
					<div class="form-group">
						<sp:label path="emailId">Email Id</sp:label>
						<sp:input type="text" path="emailId" placeholder="Enter Email Id Here.." class="form-control"/>
					</div>
					<div class="form-group">
						<sp:label path="password">Password</sp:label>
						<sp:input type="text" path="password" placeholder="Enter Password Here.." class="form-control"/>
					</div>
						</div>
						
						
						<h2>Shipping Address</h2>					
						<div class="form-group">
						<sp:label path="shippingaddress.houseNo">House No.</sp:label>
							<sp:input type="text" path="shippingaddress.houseNo" placeholder="Enter House No. Here.." class="form-control"></sp:input>
						</div>
						<div class="form-group">
						<sp:label path="shippingaddress.streetName">Street Name</sp:label>
							<sp:input type="text" path="shippingaddress.streetName" placeholder="Enter Street Here.." class="form-control"></sp:input>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
									<sp:label path="shippingaddress.city">City</sp:label>
									<sp:input type="text" path="shippingaddress.city" placeholder="Enter City Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<sp:label path="shippingaddress.state">State</sp:label>
								<sp:input type="text" path="shippingaddress.state" placeholder="Enter State Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<sp:label path="shippingaddress.zip">Zip</sp:label>
								<sp:input type="text" path="shippingaddress.zip" placeholder="Enter Zip Code Here.." class="form-control"/>
							</div>		
						</div>
						<h2>Billing Address</h2>
							<div class="form-group">
						<sp:label path="billingaddress.houseNo">House No.</sp:label>
							<sp:input type="text" path="billingaddress.houseNo" placeholder="Enter House No. Here.." class="form-control"/>
						</div>
						<div class="form-group">
						<sp:label path="billingaddress.streetName">Street Name</sp:label>
							<sp:input type="text" path="billingaddress.streetName" placeholder="Enter Street Here.." class="form-control"/>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<sp:label path="billingaddress.city">City</sp:label>
								<sp:input type="text" path="billingaddress.city" placeholder="Enter City Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<sp:label path="billingaddress.state">State</sp:label>
								<sp:input type="text" path="billingaddress.state" placeholder="Enter State Name Here.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<sp:label path="billingaddress.zip">Zip</sp:label>
								<sp:input type="text" path="billingaddress.zip" placeholder="Enter Zip Code Here.." class="form-control"/>
							</div>						
						</div>						
					<sp:button type="submit" class="btn btn-lg btn-info">Submit</sp:button>					
					</div>
				</sp:form> 
	</div>
	</div>
<script type="text/javascript">

</script>
</body>
</html>
