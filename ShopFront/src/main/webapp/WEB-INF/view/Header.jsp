<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
    
<html lang="en">
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

<body style="background-color:white;">

<nav class="navbar navbar-inverse navbar-fixed-top"  >
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<c:url value="/" />"><b style="color:#19689A;">Watch co.</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
      <li class="dropdown">
      <a class="dropdown-toggle"data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach items="${categoryList}" var="cat"> 
      <li><a href="${pageContext.request.contextPath }/ProductTable/${cat.categoryID}" value="${cat.categoryID}">${cat.categoryName}</a></li>
      </c:forEach> 
      </ul>
      </li>
      
      
        <li class="active"><a href="${pageContext.request.contextPath }/admin/Category">Category <span class="sr-only">(current)</span></a></li>
        <li><a href="${pageContext.request.contextPath }/admin/Product">Product</a></li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">User <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Login">Login</a></li>
            
            <sec:authorize access="isAuthenticated()">
            <li><a href="${pageContext.request.contextPath}/Logout">Logout</a></li>
            </sec:authorize>
           
            <li><a href="Registration">Registration</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
      <sec:authorize access="isAuthenticated()">
      <li><br>Welcome<i>${pageContext.request.userPrincipal.name}</i></li>
      </sec:authorize>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
