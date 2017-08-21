
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>

<%@ include file = "Header.jsp" %>

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
        <img src="resources/images/watch1.jpg" alt="bretling" width="1000" height="1200";">
      </div>

      <div class="item">
        <img src="resources/images/watch2.jpg" alt="Chicago" width="1000" height="1200";">
      </div>
    
      <div class="item">
        <img src="resources/images/watch3.jpg" alt="New york" width="1000" height="1200";">
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

<div class=container>
<c:forEach items="${productList }" var="c">
<div class="col-md-2 column productbox">
    <img src="${pageContext.request.contextPath}/resources/images/${c.productID}.jpg" class="img-responsive">
    <div class="producttitle">${c.productName }</div>
    <div class="productprice"><div class="pull-right"><a href="#" class="btn btn-danger btn-sm" role="button">Cart</a></div><div class="pricetext">${c.productCost }</div></div>
</div>
</c:forEach>
<p>&nbsp;</p><p>&nbsp;</p>
</div>
<%@ include file = "Footer.jsp" %>



