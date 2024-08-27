<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration Form</title>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- SweetAlert2 CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<!-- Custom CSS -->
<style>
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

.mandatory {
	color: red;
	margin-left: 5px;
}
</style>
</head>
<body>

	<div class="container form-container">
		<h2 class="text-center">Student Registration Form</h2>

		<form:form id="studentForm" action="saveStudents"
			modelAttribute="student" method="POST"
			onsubmit="return validateForm()">
			<div class="mb-3">
				<label for="name" class="form-label">Name<span
					class="mandatory">*</span></label>
				<form:input path="name" cssClass="form-control" />
			</div>

			<div class="mb-3">
				<label for="email" class="form-label">Email<span
					class="mandatory">*</span></label>
				<form:input path="email" cssClass="form-control" />
			</div>

			<div class="mb-3">
				<label for="phone" class="form-label">Phone<span
					class="mandatory">*</span></label>
				<form:input path="phone" cssClass="form-control" />
			</div>

			<div class="mb-3">
				<label for="gender" class="form-label">Gender<span
					class="mandatory">*</span></label>
				<form:radiobuttons path="gender" items="${genders}"
					cssClass="form-check-input" />
			</div>

			<div class="mb-3">
				<label for="course" class="form-label">Course<span
					class="mandatory">*</span></label>
				<form:select path="course" cssClass="form-select">
					<!-- Add the "None of the above" option -->
					<form:option value="" label="--select--" />
					<!-- Add the options from the database -->
					<form:options items="${courses}" />
				</form:select>
			</div>


			<div class="mb-3">
				<label for="timings" class="form-label">Timings<span
					class="mandatory">*</span></label>
				<form:checkboxes path="timings" items="${timings}"
					cssClass="form-check-input" />
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</form:form>
	</div>

	<!-- Validation Script -->
	<script type="text/javascript">
		function validateForm() {
			const name = document.querySelector('[name="name"]').value;
			const email = document.querySelector('[name="email"]').value;
			const phone = document.querySelector('[name="phone"]').value;
			const gender = document.querySelector('[name="gender"]:checked');
			const course = document.querySelector('[name="course"]').value;
			const timings = document
					.querySelectorAll('[name="timings"]:checked');

			if (!name || !email || !phone || !gender || !course
					|| timings.length === 0) {
				Swal.fire({
					title : 'Error!',
					text : 'Please fill all the mandatory fields!',
					icon : 'error',
					confirmButtonText : 'OK'
				});
				return false;
			}

			// If all fields are filled, the form will submit
			return true;
		}
	</script>

</body>
</html>
