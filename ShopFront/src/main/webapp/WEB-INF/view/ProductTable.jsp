<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>products</title>

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
<%@ include file = "Header.jsp" %>
<br><br><br>
<div class=container>
<c:forEach items="${productList }" var="c">
<div class="col-md-2 column productbox">
    <div class="producttitle">${c.productName }</div>
    <div class="productprice"><div class="pull-right"><a href="${pageContext.request.contextPath }/myCart/addToCart/${c.productID}" class="btn btn-danger btn-sm" role="button">Cart</a></div><div class="pricetext">${c.productCost }</div></div>
    <img style="width:150px;height:150px;"src="${pageContext.request.contextPath}/resources/images/${c.productID}.jpg" class="img-responsive">

</div>
</c:forEach>
<br>
<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
</div>
</body>
</html>