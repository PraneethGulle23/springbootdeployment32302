<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="<c:url value='/studentreg.css' />"> <!-- Adjust path as needed -->
</head>

<body>
    <div class="signup-dialog">
        <h2>Create a New Account</h2>
        <form class="signup-form" action="insertstudent" method="POST">
            <fieldset>
                <legend>Personal Details</legend>
                <div class="form-group">
                    <input type="text" id="id" name="sid" placeholder="ID" required />
                </div>
                <div class="form-group">
                    <input type="text" id="firstname" name="sfirstname" placeholder="First Name" required />
                </div>
                <div class="form-group">
                    <input type="text" id="lastname" name="slastname" placeholder="Last Name" required />
                </div>
                <div class="form-group">
                    <input type="email" id="email" name="semail" placeholder="Email" required />
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="spassword" placeholder="Password" required />
                </div>
                <div class="form-group">
                    <input type="text" id="contact" name="scontact" placeholder="Contact Number" required />
                </div>
            </fieldset>

            <fieldset>
                <legend>Educational Details</legend>
                <div class="form-group">
                    <input type="text" id="degree" name="sdegree" placeholder="Degree of Study" required />
                </div>
                <div class="form-group">
                    <input type="text" id="college" name="scollege" placeholder="University/College" required />
                </div>
                <div class="form-group">
                    <input type="text" id="city" name="scity" placeholder="City" required />
                </div>
                <div class="form-group">
                    <input type="text" id="country" name="scountry" placeholder="Country" required />
                </div>
            </fieldset>

            <button type="submit" class="signup-btn">Sign Up</button>
            <button type="button" class="google-signup">Login with Google</button>
        </form>
    </div>
    <div th:if="${error}">
    <p th:text="${error}"></p>
</div>
</body>

</html>
