<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th colspan=2>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${meals}" var="meal">
        <tr>
            <td><c:out value="${meal.dateTime}" /></td>
            <td><c:out value="${meal.description}" /></td>
            <td><c:out value="${meal.calories}" /></td>
<%--            <td><fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" /></td>--%>
<%--            <td><c:out value="${user.email}" /></td>--%>
            <td><a href="MealServlet?action=edit&mealId=<c:out value="${meal.id}"/>">Update</a></td>
            <td><a href="MealServlet?action=delete&mealId=<c:out value="${meal.id}"/>">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p><a href="UserController?action=insert">Add User</a></p>
</body>
</html>