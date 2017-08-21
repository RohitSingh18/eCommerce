<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
    
<html lang="en">
<head>
    <meta charset="utf-8">
     
    <style type="text/css">
        footer{
    background-color:rgba(94, 97, 111,1.0);
    height:120px;
    position:absolute;
    width:100%;
    bottom:0;
    font-weight:lighter;
    color:white;
}

footer h3{
    font-weight:lighter;
}
footer ul{
    padding-left:5px;
    list-style:none;
}
footer p{
    text-align : justify;
    font-size : 12px;
}
footer iframe {
    width:100%;
    position:relative;
    height:130px;
}
.sm{
    list-style:none;
    overflow:auto;
}
.sm li {
    display: inline;
    padding:5px;
    float:left;
} 
.sm li a img {
    width:32px;
}
    </style>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body style bgcolor="black">

<nav class="navbar navbar-default navbar-fixed-top" >
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index">Watch co.</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
      <li class="dropdown">
      <a class="dropdown-toggle"data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach items="${categoryList}" var="cat">
      <li><a href="${pageContext.request.contextPath }/productByCategory"/${cat.categoryID}">${cat.categoryName}</a></li>
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
