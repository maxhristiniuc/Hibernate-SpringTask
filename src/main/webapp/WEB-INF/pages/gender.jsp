<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Here are all our ${gender}:</h2>
<c:forEach items="${list}" var="user">
    <p>Id: ${user.id} | Name: ${user.name} | Password: ${user.password}</p>
</c:forEach>
</body>
</html>
