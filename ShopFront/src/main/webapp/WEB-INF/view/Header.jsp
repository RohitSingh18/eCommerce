<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
    
<html lang="en">
<head>
<title>products</title>

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

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
      <li class="dropdown">
      <a class="dropdown-toggle"data-toggle="dropdown" href="">Category<span class="caret"></span></a>
      <ul class="dropdown-menu">
      <c:forEach items="${categoryList}" var="cat"> 
      <li><a href="${pageContext.request.contextPath }/ProductTable/${cat.categoryID}" value="${cat.categoryID}">${cat.categoryName}</a></li>
      </c:forEach> 
      </ul>
      </li>
      
    
          </ul>
       <ul class="nav navbar-nav navbar-right">
            
            <sec:authorize access="isAuthenticated()">
            <li><a href="${pageContext.request.contextPath}/Logout">Logout</a></li>
            </sec:authorize>
           <sec:authorize access="isAnonymous()">
            <li><a href="Registration">Registration</a></li>
            <li><a href="Login">Login</a></li> 
            </sec:authorize>

    
      <sec:authorize access="hasRole('ROLE_USER')">
      <li><a href="${pageContext.request.contextPath}/myCart/all"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
      <li><br>Welcome<i>${pageContext.request.userPrincipal.name}</i></li>
      </sec:authorize>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
