<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Academic Activities</title>
    <link rel="stylesheet" href="MyActivities.css"> <!-- Link your custom CSS -->
</head>
<body>
    <div class="activities-container">
        <!-- Dashboard Header -->
        <header class="dashboard-header">
            <h1>My Academic Activities</h1>
            <div class="user-name">
                <p>Welcome, <strong>${userName}</strong>!</p> <!-- Dynamically inserted user name -->
            </div>
        </header>

        <div class="dashboard-content">
            <!-- Sidebar Navigation -->
            <nav class="dashboard-nav">
                <ul>
                    <li><a href="/">🏠 Home</a></li>
                    <li><a href="/dashboard">📊 Dashboard</a></li>
                    <li><a href="/academic-activities" class="active-link">📚 My Academic Activities</a></li>
                    <li><a href="/project">🗂️ Projects & Assessments</a></li>
                    <li><a href="/create-project">➕ Create Project</a></li>
                    <li><a href="/job-opportunities">💼 Job Opportunities</a></li>
                </ul>
            </nav>

            <!-- Main Content Area -->
            <main class="dashboard-main">
                <section class="dashboard-section preliminary-details">
                    <h2>Overview</h2>
                    <p>Here you can find an overview of your current academic activities. Stay organized and keep track of deadlines!</p>
                </section>

                <section class="dashboard-section current-courses">
                    <h2>Current Courses</h2>
                    <ul>
                        <c:forEach var="course" items="${currentCourses}">
                            <li class="course-item">
                                <span class="course-name">${course.name}</span>
                                <span class="course-code"> (${course.code})</span>
                            </li>
                        </c:forEach>
                    </ul>
                </section>

                <section class="dashboard-section skills-gained">
                    <h2>Skills Gained</h2>
                    <ul>
                        <c:forEach var="skill" items="${skillsGained}">
                            <li class="skill-item">${skill}</li>
                        </c:forEach>
                    </ul>
                </section>

                <section class="dashboard-section recent-activities">
                    <h2>Recent Activities</h2>
                    <p>Keep track of your completed assignments, projects, and other academic milestones.</p>
                    <!-- Add dynamic content related to recent activities -->
                </section>

                <section class="dashboard-section upcoming-deadlines">
                    <h2>Upcoming Deadlines</h2>
                    <p>Stay ahead of your assignments and projects!</p>
                    <!-- Add dynamic content related to upcoming deadlines -->
                </section>
            </main>
        </div>

        <footer class="dashboard-footer">
            <p>&copy; 2024 Student Work-Study Management System. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
