<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="studentdashboard.css">
</head>
<body>
    <div class="dashboard-container">
        <header class="dashboard-header">
            <h1>Dashboard</h1>
            <div class="user-info">
                <p class="user-name">User</p>
                <p class="user-designation">Student</p>
            </div>
        </header>

        <nav class="dashboard-nav">
            <ul>
                <li><a href="/">🏠 Home</a></li>
                <li><a href="/dashboard" class="active-link">📊 Dashboard</a></li>
                <li><a href="/academic-activities">📚 My Academic Activities</a></li>
                <li><a href="/project">🗂️ Projects & Assessments</a></li>
                <li><a href="/create-project">➕ Create Project</a></li>
                <li><a href="/job-opportunities">💼 Job Opportunities</a></li>
            </ul>
        </nav>

        <main class="dashboard-main">
            <section class="dashboard-section preliminary-details">
                <h2>Welcome to Your Student Dashboard</h2>
                <p class="dashboard-welcome">
                    Here, you can find information about your work-study opportunities, academic activities, and important deadlines.
                </p>
            </section>

            <section class="dashboard-section">
                <h2>Upcoming Work-Study Opportunities</h2>
                <div class="dashboard-content">
                    <div class="dashboard-item">Internship at XYZ Company</div>
                    <div class="dashboard-item">Research Assistant Position</div>
                    <div class="dashboard-item">Part-Time Tutor</div>
                </div>
            </section>

            <section class="dashboard-section">
                <h2>Your Recent Activities</h2>
                <div class="dashboard-content">
                    <div class="dashboard-item">Completed Project A</div>
                    <div class="dashboard-item">Submitted Assignment B</div>
                    <div class="dashboard-item">Attended Workshop on C</div>
                </div>
            </section>

            <section class="dashboard-section">
                <h2>Important Deadlines</h2>
                <div class="dashboard-content">
                    <div class="dashboard-item">Project A Due: <span class="deadline-date">Oct 10</span></div>
                    <div class="dashboard-item">Midterm Exams: <span class="deadline-date">Oct 15-20</span></div>
                    <div class="dashboard-item">Job Application Deadline: <span class="deadline-date">Oct 30</span></div>
                </div>
            </section>

            <section class="dashboard-section">
                <h2>Your Progress Overview</h2>
                <div class="dashboard-content progress-overview">
                    <div class="dashboard-item">Courses Completed: 5/10</div>
                    <div class="dashboard-item">Current GPA: 3.8</div>
                    <div class="dashboard-item">Upcoming Credits: 12</div>
                </div>
            </section>
        </main>

        <footer class="dashboard-footer">
            <p>&copy; 2024 Student Work-Study Management System. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
