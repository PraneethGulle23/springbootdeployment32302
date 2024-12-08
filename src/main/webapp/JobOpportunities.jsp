<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Opportunities</title>
    <link rel="stylesheet" type="text/css" href="JobOpportunities.css">
</head>
<body>
    <div class="job-opportunities-page">
        <!-- Header -->
        <header class="header">
            <h1>Job Opportunities</h1>
            <div class="user-name">
                <p>Welcome, <strong><%= session.getAttribute("userName") != null ? session.getAttribute("userName") : "Your Name" %></strong>!</p>
            </div>
        </header>

        <!-- Navigation Bar -->
        <nav class="dashboard-nav">
            <ul>
                <li><a href="<%=request.getContextPath()%>/home">🏠 Home</a></li>
                <li><a href="<%=request.getContextPath()%>/dashboard">📊 Dashboard</a></li>
                <li><a href="<%=request.getContextPath()%>/academic-activities">📚 My Academic Activities</a></li>
                <li><a href="<%=request.getContextPath()%>/project">🗂️ Projects & Assessments</a></li>
                <li><a href="<%=request.getContextPath()%>/create-project">➕ Create Project</a></li>
                <li><a href="<%=request.getContextPath()%>/job-opportunities">💼 Job Opportunities</a></li>
            </ul>
        </nav>

        <!-- Main Content -->
        <main class="main-content">
            <h2>Available Positions</h2>
            <div class="job-list">
                <%-- Sample Data for Jobs --%>
                <%
                    class Job {
                        int id;
                        String title;
                        String description;
                        String[] skills;
                        String location;
                        String applyLink;

                        public Job(int id, String title, String description, String[] skills, String location, String applyLink) {
                            this.id = id;
                            this.title = title;
                            this.description = description;
                            this.skills = skills;
                            this.location = location;
                            this.applyLink = applyLink;
                        }
                    }

                    List<Job> jobOpportunities = new ArrayList<>();
                    jobOpportunities.add(new Job(1, "Internship at XYZ Corp", "Looking for a web developer intern with experience in React and Node.js.", new String[]{"React", "Node.js", "JavaScript"}, "Remote", "#"));
                    jobOpportunities.add(new Job(2, "Part-time Software Developer", "Flexible hours for students. Work on exciting projects with a talented team.", new String[]{"Python", "Django", "Machine Learning"}, "On-site", "#"));
                    jobOpportunities.add(new Job(3, "Data Analyst Intern", "Seeking interns for data analysis projects. Must be proficient in SQL and Excel.", new String[]{"SQL", "Excel", "Data Visualization"}, "Hybrid", "#"));

                    for (Job job : jobOpportunities) {
                %>
                <div class="job-card">
                    <h3><%= job.title %></h3>
                    <p><%= job.description %></p>
                    <p><strong>Skills:</strong> <%= String.join(", ", job.skills) %></p>
                    <p><strong>Location:</strong> <%= job.location %></p>
                    <a href="<%= job.applyLink %>" class="apply-button">Apply Now</a>
                </div>
                <% } %>
            </div>
        </main>

        <!-- Footer -->
        <footer class="footer">
            <p>© 2024 Student Work-Study Management System</p>
        </footer>
    </div>
</body>
</html>
