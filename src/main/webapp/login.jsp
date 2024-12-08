<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/login.css"> <!-- Link the CSS file -->
</head>
<body>
    <div class="login-dialog">
        <h2>Welcome to Student Work-Study</h2>
        <form class="login-form" action="/login" method="post"> <!-- Update the form action to /login -->
            <div class="form-group">
                <input 
                    type="email" 
                    id="email" 
                    name="email" 
                    placeholder="Enter your email" 
                    required />
            </div>
            <div class="form-group">
                <input 
                    type="password" 
                    id="password" 
                    name="password" 
                    placeholder="Enter your password" 
                    required />
            </div>

            <button type="submit" class="login-btn">Login</button>
            <button type="button" class="google-login" onclick="googleLogin()">Login with Google</button>
            <div class="signup-section">
                <p>New User?</p>
                <a href="/signup" class="signup-btn">Sign Up</a> <!-- Update signup link to /signup -->
            </div>
        </form>
    </div>

    <script>
        function googleLogin() {
            alert('Google login is under development.'); // Placeholder logic
        }
    </script>
</body>
</html>
