<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Registration Success</title>
    
    <!-- SweetAlert2 CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>

    <!-- Trigger SweetAlert on page load if the message exists -->
    <script type="text/javascript">
        <% if (request.getAttribute("msg") != null) { %>
            Swal.fire({
                title: 'Success!',
                text: '<%= request.getAttribute("msg") %>',
                icon: 'success',
                confirmButtonText: 'Go Back'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = 'load';  // Redirect to 'load' page
                }
            });
        <% } %>
    </script>

</body>
</html>
