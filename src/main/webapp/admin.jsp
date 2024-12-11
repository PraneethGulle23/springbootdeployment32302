<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Student Work-Study System</title>
    <!-- Reference to the CSS file -->
    <link rel="stylesheet" href="/admin.css">
</head>
<body>
    <div class="admin-container">
        <!-- Header Section -->
        <header class="admin-header">
            <form action="adminlogin" method="get">
                <button type="submit" class="login-button">Login</button>
            </form>
            <h1>Admin Dashboard - Student Work-Study System</h1>
        </header>

        <!-- Navigation Bar -->
        <nav class="admin-nav">
            <ul>
                <li><a href="/admin-home">🏠 Home</a></li>
                <li><a href="/admin-dashboard">📊 Dashboard</a></li>
                <li><a href="/manage-students">👨‍🎓 Manage Students</a></li>
                <li><a href="/manage-projects">🗂️ Manage Projects</a></li>
                <li><a href="/create-project">➕ Create Project</a></li>
                <li><a href="/job-opportunities">💼 Job Opportunities</a></li>
                <li><a href="/admin-logout">🚪 Logout</a></li>
            </ul>
        </nav>

        <!-- Image Section -->
        <section class="image-section">
            <div class="text-container">
                <div class="overlay-text">Welcome Admin to the Student Work-Study System</div>
                <div class="sub-overlay-text">Manage student work-study opportunities efficiently</div>
            </div>
            <div class="image-container">
                <img class="admin-home-image" src="images/home.jpg" alt="Admin Home">
                <!-- Ensure the image is located in `webapp/images/admin-home.jpg` -->
            </div>
        </section>

        <!-- Footer Section -->
        <footer class="admin-footer">
            <p>&copy; 2024 Student Work-Study Management System. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
