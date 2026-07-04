<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Smart Laptop Store</title>

<link rel="stylesheet" href="css/allcomputerinfo.css">

</head>
<body>

<nav class="navbar">

    <div class="logo">
        Smart Laptop Store
    </div>

    <div class="user-panel">

    <a href="cart" class="cart-link">
        🛒 Cart
    </a>

    <span class="customer-name">
        👤 ${customerName}
    </span>

    <form action="logout" method="get">
        <button class="logout-btn">
            Logout
        </button>
    </form>

</div>

</nav>

<section class="hero">
    <h1>Welcome to Smart Laptop Store</h1>
    <p>Find the best laptops from top brands at affordable prices.</p>
</section>

<section class="products">

    <div class="card">
        <img src="https://picsum.photos/350/220?1">
        <h3>Dell Inspiron 15</h3>
        <p>Intel Core i5 • 16GB RAM • 512GB SSD</p>
        <h4>₹59,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>

    <div class="card">
        <img src="https://picsum.photos/350/220?2">
        <h3>HP Pavilion</h3>
        <p>Intel Core i7 • 16GB RAM • 1TB SSD</p>
        <h4>₹74,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>

    <div class="card">
        <img src="https://picsum.photos/350/220?3">
        <h3>Lenovo IdeaPad</h3>
        <p>Ryzen 7 • 16GB RAM • 512GB SSD</p>
        <h4>₹64,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>

    <div class="card">
        <img src="https://picsum.photos/350/220?4">
        <h3>ASUS VivoBook</h3>
        <p>Intel i5 • 8GB RAM • 512GB SSD</p>
        <h4>₹54,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>

    <div class="card">
        <img src="https://picsum.photos/350/220?5">
        <h3>Acer Aspire 7</h3>
        <p>Ryzen 5 • 16GB RAM • 512GB SSD</p>
        <h4>₹62,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>

    <div class="card">
        <img src="https://picsum.photos/350/220?6">
        <h3>MacBook Air M3</h3>
        <p>Apple M3 • 16GB RAM • 512GB SSD</p>
        <h4>₹1,19,999</h4>
        <button class="cart-btn">
        Add To Cart
    </button>
    </div>
    

</section>

</body>
</html>