<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sp:form action="${pageContext.request.contextPath}/addProduct" method="POST" modelAttribute="product">
<c:if test="${not empty product.productName}">
Product ID <sp:input path="productID" readOnly="true" disabled="true"/>
<sp:hidden path="productID"/>
</c:if>
Product Name<sp:input path="productName"/>
Product Desc<sp:input path="productDesc"/>

<sp:button value="submit">ADD</sp:button>
</sp:form>
<br>
<br>
<br>
<c:if test="${not empty productList }">
<table width="50%"border="1">
<tr>
<th>ID</th><th>Product Name</th><th>Product Description</th>
</tr>
<tr>
<c:forEach items="${productList }" var="c">
<tr><td>${c.productID }</td>
<td>${c.productName }</td>
<td>${c.productDesc }</td>
<td><a href="<c:url value='updateProduct/${c.productID}'/>">Edit/</a>
<td><a href="<c:url value='deleteProduct/${c.productID}'/>">Delete/</a></td></tr>
</c:forEach>

</table>
</c:if>


</body>
</html>