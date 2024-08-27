<%@page import="com.student.entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Students</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-4">
        <h2 class="text-center">Student List</h2>

        <!-- Search Form -->
        <form action="viewStudents" method="get" class="mb-4">
            <div class="input-group">
                <input type="text" class="form-control" name="search" placeholder="Search by name or email" value="${param.search}">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>

        <!-- Students Table -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Sl. No.</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Gender</th>
                    <th>Course</th>
                    <th>Timings</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Student> students = (List<Student>) request.getAttribute("students");
                    int serialNo = 1;
                    for (Student student : students) {
                %>
                    <tr>
                        <td><%= serialNo++ %></td>
                        <td><%= student.getName() %></td>
                        <td><%= student.getEmail() %></td>
                        <td><%= student.getPhone() %></td>
                        <td><%= student.getGender() %></td>
                        <td><%= student.getCourse() %></td>
                        <td>
                            <% 
                                String[] timings = student.getTimings();
                                if (timings != null) {
                                    for (String timing : timings) {
                                        out.print(timing + " ");
                                    }
                                }
                            %>
                        </td>
                    </tr>
                <% } %>
            </tbody>
        </table>

        <div class="text-center mt-3">
            <a href="load" class="btn btn-primary">Add New Student</a>
        </div>
    </div>

</body>
</html>
