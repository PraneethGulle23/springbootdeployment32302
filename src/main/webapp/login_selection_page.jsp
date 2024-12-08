<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Selection</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-selection-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        .login-buttons {
            display: flex;
            justify-content: space-between;
        }

        .login-button {
            background-color: #6200ea;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
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
    <div class="login-selection-container">
        <h1>Choose Your Login</h1>
        <div class="login-buttons">
            <a href="adminlogin" class="login-button">Admin Login</a>
            <a href="studentlogin" class="login-button">Student Login</a>
        </div>
    </div>
</body>
</html>
