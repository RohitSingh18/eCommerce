
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "Header.jsp" %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .productbox {
    background-color:#ffffff;
	padding:10px;
	margin-bottom:10px;
	-webkit-box-shadow: 0 8px 6px -6px  #999;
	   -moz-box-shadow: 0 8px 6px -6px  #999;
	        box-shadow: 0 8px 6px -6px #999;
}

.producttitle {
    font-weight:bold;
	padding:5px 0 5px 0;
}

.productprice {
	border-top:1px solid #dadada;
	padding-top:5px;
}

.pricetext {
	font-weight:bold;
	font-size:1.4em;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    </head>
<body>
<br>
<br>
<div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/watch3.jpg" alt="bretling";">
      </div>

      <div class="item">
        <img src="resources/images/watch2.jpg" alt="Chicago" ;">
      </div>
    
      <div class="item">
        <img src="resources/images/watch1.jpg" alt="New york";">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<sec:authorize access="hasRole('ROLE_ADMIN')">
     			 <jsp:forward page="/admin/Category"></jsp:forward>
</sec:authorize>
<div class=container>
<div class="row">
<c:forEach items="${productList }" var="c" begin="5" end="10">
<div class="col-md-4 column productbox">
    <img src="${pageContext.request.contextPath}/resources/images/${c.productID}.jpg" class="img-responsive">
    <div class="producttitle">${c.productName }</div>
    <div class="productprice"><div class="pull-right"><a href="${pageContext.request.contextPath }/myCart/addToCart/${c.productID}" class="btn btn-danger btn-sm" role="button">Cart</a><a href="${pageContext.request.contextPath }/ProductDetails/${c.productID}" class="btn btn-primary btn-sm" role="button">Details</a></div></div><div class="pricetext">&#8364; ${c.productCost }</div></div>
	
</c:forEach>
</div>

</div>
<p>&nbsp;</p><p>&nbsp;</p>
</div>
</body>

<%@ include file = "Footer.jsp" %>
</html>


