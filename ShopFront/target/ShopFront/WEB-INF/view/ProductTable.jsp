<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>productBlock</title>
</head>
<body>
<div class=container>
<c:forEach items="${productList }" var="c">
<div class="col-md-2 column productbox">
    <div class="producttitle">${c.productName }</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">Cart</a></div><div class="pricetext">${c.productCost }</div></div>
    <img style="width:150px;height:150px;"src="${pageContext.request.contextPath}/resources/images/${c.productID}.jpg" class="img-responsive">

</div>
</c:forEach>
<p>&nbsp;</p><p>&nbsp;</p>
</div>
</body>
</html>