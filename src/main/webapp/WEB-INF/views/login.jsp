<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Laptop Store</title>
<link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>

<div class="login-container">

    <h2>Login</h2>

    <form action="/login" method="post">

        <div class="form-group">
            <label>Email</label>
            <input type="text" name="email" placeholder="Enter email" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter Password" required>
        </div>

        <button type="submit">Login</button>

    </form>

    <p class="register-link">
        Don't have an account?
        <a href="/registration-page">Register Here</a>
    </p>

</div>

</body>
</html>