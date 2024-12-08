<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Work-Study System</title>
    <!-- Reference to the CSS file -->
    <link rel="stylesheet" href="/home.css">
</head>
<body>
    <div class="home-container">
        <!-- Header Section -->
        <header class="home-header">
            <form action="studentlogin" method="get">
                <button type="submit" class="login-button">Login</button>
            </form>
            <h1>Student Work-Study System</h1>
        </header>

        <!-- Navigation Bar -->
        <nav class="home-nav">
            <ul>
                <li><a href="/">🏠 Home</a></li>
                <li><a href="/dashboard">📊 Dashboard</a></li>
                <li><a href="/academic-activities">📚 My Academic Activities</a></li>
                <li><a href="/project">🗂️ Projects & Assessments</a></li>
                <li><a href="/create-project">➕ Create Project</a></li>
                <li><a href="/job-opportunities">💼 Job Opportunities</a></li>
            </ul>
        </nav>

        <!-- Image Section -->
        <section class="image-section">
            <div class="text-container">
                <div class="overlay-text">Welcome to the Student Work-Study System</div>
                <div class="sub-overlay-text">Manage or track work-study opportunities with ease</div>
            </div>
            <div class="image-container">
                <img class="home-image" src="images/home.jpg" alt="Home Cover">
                <!-- Ensure the image is located in `webapp/images/home.jpg` -->
            </div>
        </section>

        <!-- Footer Section -->
        <footer class="home-footer">
            <p>&copy; 2024 Student Work-Study Management System. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
