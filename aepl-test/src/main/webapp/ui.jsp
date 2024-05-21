<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registration Form</title>
	<style>
		.container {
			max-width: 500px;
			margin: 40px auto;
			padding: 20px;
			background-color: #f9f9f9;
			border: 1px solid #ccc;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		
		.form-group {
			margin-bottom: 20px;
		}
		
		.label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}
		
		.input-field {
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ccc;
		}
		
		.error {
			color: #red;
			font-size: 12px;
			margin-top: 10px;
		}
		
		.button {
			background-color: #4CAF50;
			color: #fff;
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
		}
		
		.button:hover {
			background-color: #3e8e41;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Registration Form</h2>
		<form id="registrationForm" action="kishore" method="post" >
			<div class="form-group">
				<label for="name" class="label">Name</label>
				<input type="text" id="name" name="name" class="input-field" required>
				<div class="error" id="nameError"></div>
			</div>
			<div class="form-group">
				<label for="email" class="label">Email</label>
				<input type="email" id="email" name="email" class="input-field" required>
				<div class="error" id="emailError"></div>
			</div>
			<div class="form-group">
				<label for="mobileNumber" class="label">Mobile Number</label>
				<input type="tel" id="mobileNumber" name="mobileNumber" class="input-field" required>
				<div class="error" id="mobileNumberError"></div>
			</div>
			<div class="form-group">
				<label for="dateOfBirth" class="label">Date of Birth</label>
				<input type="date" id="dateOfBirth" name="dateOfBirth" class="input-field" required>
				<div class="error" id="dateOfBirthError"></div>
			</div>
			<div class="form-group">
				<label for="location" class="label">Location</label>
				<input type="text" id="location" name="location" class="input-field" required>
				<div class="error" id="locationError"></div>
			</div>
			<div class="form-group">
				<label for="identificationDocument" class="label">Identification Document</label>
				<input type="file" id="identificationDocument" name="identificationDocument" class="input-field" required>
				<div class="error" id="identificationDocumentError"></div>
			</div>
			<button type="submit" class="button">Register</button>
		</form>
	</div>
	
	<script>
		const form = document.getElementById('registrationForm');
		const nameInput = document.getElementById('name');
		const emailInput = document.getElementById('email');
		const mobileNumberInput = document.getElementById('mobileNumber');
		const dateOfBirthInput = document.getElementById('dateOfBirth');
		const locationInput = document.getElementById('location');
		const identificationDocumentInput = document.getElementById('identificationDocument');
		
		form.addEventListener('submit', (e) => {
			e.preventDefault();
			let errors = [];
			
			if (nameInput.value === "") {
				errors.push("Name is required");
				document.getElementById('nameError').innerText = "Name is required";
			}
			
			if (!emailInput.value.match(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/)) {
				errors.push("Invalid email address");
				document.getElementById('emailError').innerText = "Invalid email address";
			}
			
			if (!mobileNumberInput.value.match(/^\d{10}$/)) {
				errors.push("Invalid mobile number");
			}
		}
		
		</script>