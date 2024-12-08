<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f3f4f6;
        text-align: center;
        padding: 50px;
    }

    .success-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
        text-align: center;
    }

    .message {
        font-size: 18px;
        color: #333;
        margin-bottom: 20px;
    }

    .login-button {
        background-color: #6200ea;
        color: #ffffff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
    }

    .login-button:hover {
        background-color: #4a00b4;
    }

    .login-button:focus {
        outline: none;
        box-shadow: 0 0 5px rgba(98, 0, 234, 0.5);
    }
</style>
</head>
<body>
    <div class="success-container">
        <p class="message"><c:out value="${message}" /></p>
        <a href="studentlogin" class="login-button">Continue to Login</a>
    </div>
</body>
</html>
