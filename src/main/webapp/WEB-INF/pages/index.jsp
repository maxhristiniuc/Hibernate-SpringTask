<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        <%@include file="../resources/style.css"%>
    </style>
</head>
<body>
<div align="center">
    <div style="width: 300px; height: 500px;">
        <form:form method="POST" action="/login">
            <div class="imgcontainer">
                <img src="../resources/incognito.jpg" alt="Avatar" class="avatar">
            </div>
            <h3 align="center" style="color:maroon;">${message}</h3>

            <div class="container" align="left">
                <label>Username</label>
                <input type="text" name="name" required="required"/>

                <label>Password</label>
                <input type="password" name="password" required="required"/>

                <label>Gender</label>
                <p>
                <input type="radio" name="gender" value="MALE" checked>Male
                <input type="radio" name="gender" value="FEMALE">Female<br></p>

                <label>Age</label>
                <select name="age">
                    <option value="">Select</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                </select>

                <button type="submit">Login</button>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>
