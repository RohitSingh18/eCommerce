<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
    <%@ include file = "Header.jsp" %>



<head>
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Category List</title>
  </head>  
  <br>
  <br>
  <br>
<sp:form action="${pageContext.request.contextPath}/addCategory" method="POST" modelAttribute="category">
<c:if test="${not empty category.categoryName}">
Category ID <sp:input path="categoryID" readOnly="true" disabled="true"/>
<sp:hidden path="categoryID"/>
</c:if>
Cat Name<sp:input path="categoryName"/>
Cat Desc<sp:input path="categoryDesc"/>

<sp:button value="submit">ADD</sp:button>
<a href="${pageContext.request.contextPath }/admin/Product" class="btn-success">Go to Product</a>
</sp:form>
<br>

<c:if test="${not empty categoryList }">
<table width="50%"border="1">
<tr>
<br><br><br>
<th>ID</th><th>Category Name</th><th>Category Description</th><th>Edit</th><th>Delete</th>
</tr>
<tr>
<c:forEach items="${categoryList }" var="c">
<tr><td>${c.categoryID }</td>
<td>${c.categoryName }</td>
<td>${c.categoryDesc }</td>
<td><a href="<c:url value='/updateCategory/${c.categoryID}'/>">Edit</a>
<td><a href="<c:url value='/deleteCategory/${c.categoryID}'/>">Delete</a></td></tr>
</c:forEach>

</table>
</c:if>
