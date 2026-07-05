<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Laptop Details</title>

<link rel="stylesheet" href="/css/laptop-details.css">

</head>
<body>

<header>

    <h1>💻 Smart Laptop Shop</h1>

    <nav>
        <a href="/">Home</a>
        <a href="/Laptop">Laptops</a>
        <a href="/customer">Customer</a>
        <a href="/orders">Orders</a>
        <a href="/contact">Contact</a>
    </nav>

</header>

<div class="container">

    <div class="image-section">

    <button class="slider-btn left" onclick="previousImage()">&#10094;</button>

    <img id="sliderImage" class="slider-image" src="/images/dell_1.jpg" alt="Laptop">

    <button class="slider-btn right" onclick="nextImage()">&#10095;</button>

</div>

</div>
    <div class="details">
    <center>
    		<h1>Dell Inspiron 15</h1>

        <h2>₹62,999</h2>

        <span class="stock">✔ Available in Stock</span>

        <hr>

        <h3>Specifications</h3>

        <table>

            <tr>
                <th>Brand</th>
                <td>Dell</td>
            </tr>

            <tr>
                <th>Processor</th>
                <td>Intel Core i5 13th Gen</td>
            </tr>

            <tr>
                <th>RAM</th>
                <td>16 GB DDR5</td>
            </tr>

            <tr>
                <th>Storage</th>
                <td>512 GB SSD</td>
            </tr>

            <tr>
                <th>Graphics</th>
                <td>Intel Iris Xe Graphics</td>
            </tr>

            <tr>
                <th>Display</th>
                <td>15.6" Full HD IPS Display</td>
            </tr>

            <tr>
                <th>Operating System</th>
                <td>Windows 11 Home</td>
            </tr>

            <tr>
                <th>Battery</th>
                <td>54 Wh</td>
            </tr>

            <tr>
                <th>Warranty</th>
                <td>1 Year Manufacturer Warranty</td>
            </tr>

        </table>

        <h3>Description</h3>

        <p>

            The Dell Inspiron 15 is designed for students,
            software developers, office professionals and
            everyday users. It delivers excellent
            performance, long battery backup,
            premium design and fast SSD storage.

        </p>

        <div class="buttons">

            <button class="buy">Buy Now</button>

            <button class="cart">Add To Cart</button>

            <a href="/Laptop" class="back">Back</a>

        </div>

    </div>

</div>

<footer>

    <p>© 2026 Smart Laptop Shop</p>

</footer>
    <center/>
    
    
    

        
<script>

const images = [
    "/images/dell_1.jpg",
    "/images/dell_2.jpg",
    "/images/dell_3.jpg",
    "/images/dell_4.jpg",
    "/images/dell_5.jpg",
   
];

let current = 0;

function showImage() {
    document.getElementById("sliderImage").src = images[current];
}

function nextImage() {
    current++;

    if(current >= images.length){
        current = 0;
    }

    showImage();
}

function previousImage() {
    current--;

    if(current < 0){
        current = images.length - 1;
    }

    showImage();
}

</script>

</body>
</html>