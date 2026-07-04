<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Registration</title>
<link rel="stylesheet" href="./css/registration.css">
</head>
<body>

<div class="container">
    <h2>Customer Registration Form</h2>

    <form action="/registration" method="post" enctype="multipart/form-data">

        <label for="name">Customer Name</label>
        <input type="text" id="name" name="name" required>

        <label for="phone">Phone Number</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="address">Address</label>
        <textarea id="address" name="address" rows="4" required></textarea>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <button type="submit">Register</button>

    </form>
    <p style="text-align:center; margin-top:15px;">
    Already registered?
    <a href="/login-page">Login Here</a>
</p>
</div>

</body>
</html>