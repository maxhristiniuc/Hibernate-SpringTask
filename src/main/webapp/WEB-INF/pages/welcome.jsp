<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h1>Hi, Welcome to our super-puper secret page!</h1>
<p>Next, you can see the full list of <a href="/showFemales">girls</a> or <a href="/showMales">boys</a></p>
<br>
<div>
    <h2>Search users:</h2>
    <form method="get" action="/searchUsers">
        <label>Gender</label>
        <select name="gender">
            <option value="">Select</option>
            <option value="MALE">Male</option>
            <option value="FEMALE">Female</option>
        </select>
        <label>Age</label>
        <select name="age">
            <option value="">Select</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
        </select>

        <input type="submit" value="Search">
    </form>
</div>
</body>
</html>