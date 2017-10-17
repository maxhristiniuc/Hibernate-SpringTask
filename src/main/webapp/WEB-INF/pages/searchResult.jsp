<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search result</title>
</head>
<body>
    <h2>Here is the search result data:</h2>
    <c:forEach items="${usersList}" var="user">
        <p>Id: ${user.id} | Name: ${user.name} | Age: ${user.age} | Gender: ${user.gender}</p>
    </c:forEach>
</body>
</html>

