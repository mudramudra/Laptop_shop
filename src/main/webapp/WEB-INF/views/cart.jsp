<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>

<link rel="stylesheet" href="css/cart.css">

</head>
<body>

<nav class="navbar">

    <div class="logo">
        Smart Laptop Store
    </div>

    <div class="user-panel">

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

<div class="cart-container">

    <h1>My Shopping Cart</h1>

    <table>

        <tr>
            <th>Laptop</th>
            <th>Brand</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>

        <c:forEach var="item" items="${cartItems}">
        <tr>
            <td>${item.name}</td>
            <td>${item.brand}</td>
            <td>₹${item.price}</td>
            <td>${item.quantity}</td>
            <td>₹${item.price * item.quantity}</td>
        </tr>
    </c:forEach>

        

    </table>

    <div class="summary">

        <h2>Grand Total : ₹1,24,998</h2>

        <button class="checkout-btn">
            Proceed To Checkout
        </button>

    </div>

    <a href="allcomputerinfo" class="back-btn">
        Continue Shopping
    </a>

</div>

</body>
</html>