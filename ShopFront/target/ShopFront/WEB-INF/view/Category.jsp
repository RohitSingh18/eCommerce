<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>
</head>
<body>
<sp:form action="${pageContext.request.contextPath}/addCategory" method="POST" modelAttribute="category">
<c:if test="${not empty category.categoryName}">
Category ID <sp:input path="categoryID" readOnly="true" disabled="true"/>
<sp:hidden path="categoryID"/>
</c:if>
Cat Name<sp:input path="categoryName"/>
Cat Desc<sp:input path="categoryDesc"/>


<sp:button value="submit">ADD</sp:button>
</sp:form>
<br>
<br>
<br>
<c:if test="${not empty categoryList }">
<table width="50%"border="1">
<tr>
<th>ID</th><th>Category Name</th><th>Category Description</th>
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
</body>
</html>