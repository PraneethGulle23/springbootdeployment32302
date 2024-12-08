<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <!-- Link to CSS file -->
    <link rel="stylesheet" href="adminlogin.css">
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="adminlogin" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <button type="submit" class="login-button">Login</button>
            </div>
        </form>
    </div>
</body>
</html>