<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Registration</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-5PivHjWzlFJ6I7o4CG9fENdoj0F0T4U4NTLOP1Fvg5pFV/ltEKjKhcnVVo3B/c35" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
        body {
            margin-top: 40px;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

    <div class="container form-container">
        <h2 class="text-center">Student Registration Form</h2>
        
        <form:form action="saveStudents" modelAttribute="student" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <form:input path="name" cssClass="form-control" />
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <form:input path="email" cssClass="form-control" />
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Phone</label>
                <form:input path="phone" cssClass="form-control" />
            </div>

            <div class="mb-3">
                <label for="gender" class="form-label">Gender</label>
                <form:radiobuttons path="gender" items="${genders}" cssClass="form-check-input" />
            </div>

            <div class="mb-3">
                <label for="course" class="form-label">Course</label>
                <form:select path="course" cssClass="form-select">
                    <form:options items="${courses}" />
                </form:select>
            </div>

            <div class="mb-3">
                <label for="timings" class="form-label">Timings</label>
                <form:checkboxes path="timings" items="${timings}" cssClass="form-check-input" />
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form:form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-5m0roViVti+q8WotfyTIieWTTfnD5WJh6Upq4VsDXUdlSvoQ4cRhtqvHvQb5ReCd" crossorigin="anonymous"></script>
</body>
</html>
