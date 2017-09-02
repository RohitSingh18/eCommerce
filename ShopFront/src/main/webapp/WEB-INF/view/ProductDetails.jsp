
<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sp" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/productdetail.css">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

  </head>

  <body>
	<br>
	<br>
	<div class="container" >
		<div class="card"style="background:white" >
			<div class="container-fluid">
							<img src="${pageContext.request.contextPath }/resources/images/${productList.productID}.jpg" style="width:400px;height:400px;"/>


					<div class="details col-md-6">
						<h3 class="product-title">${productList.productName }</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						<p class="product-description">${productList.productDesc }</p>
						<h4 class="price">Our price: <span>&euro; ${productList.productCost }</span></h4>
						<p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
						
						
						<div class="action">
							<a class="add-to-cart btn btn-default" href="${pageContext.request.contextPath}/myCart/addToCart/${productList.productID}">add to cart</a>
						</div>
					</div>
				</div>
			</div>
		</div>

   <%@include file="Footer.jsp" %>
</html>


