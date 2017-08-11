<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Brand List</title>
</head>
<body>
<sp:form action="${pageContext.request.contextPath}/addBrand" method="POST" modelAttribute="brand">
<c:if test="${not empty brand.brandName}">
Brand ID <sp:input path="brandID" readOnly="true" disabled="true"/>
<sp:hidden path="brandID"/>
</c:if>
Brand Name<sp:input path="brandName"/>
<sp:select path="categoryID">
<c:forEach items="${categoryList }" var="c">
<sp:option value="${c.categoryID }">${c.categoryName}</sp:option>
</c:forEach>
</sp:select>


<sp:button value="submit">ADD</sp:button>
</sp:form>
<br>
<br>
<br>
<c:if test="${not empty brandList }">
<table width="50%"border="1">
<tr>
<th>ID</th><th>Brand Name</th><th>Cat ID</th>
</tr>
<tr>
<c:forEach items="${brandList }" var="b">
<tr><td>${b.brandID }</td>
<td>${b.brandName }</td>
<td>${b.categoryID}</td>
<td><a href="<c:url value='updateBrand/${b.brandID}'/>">Edit/</a>
<td><a href="<c:url value='deleteBrand/${b.brandID}'/>">Delete/</a></td></tr>
</c:forEach>

</table>
</c:if>

</body>
</html>