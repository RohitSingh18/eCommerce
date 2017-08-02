<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sp" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sp:form action="addCategory" method="POST" modelAttribute="category">

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
<td>${categoryName }</td>
<td>${categoryDesc }</td>

</c:forEach>
</tr>

</table>
</c:if>

</body>
</html>