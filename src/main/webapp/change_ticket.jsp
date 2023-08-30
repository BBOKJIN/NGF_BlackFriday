<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">
    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <meta charset="UTF-8">
    <title>Coupon Page</title>
    <style>
    
    /* Additional styles for the coupon section */
    .coupon-section {
        padding: 50px 0;
    }
    
    .coupon-section img {
        margin-top: 20px; /* Adjust this value as needed */
    }
    
    #selected-time {
        font-size: 57px; /* Adjust the font size as needed */
        font-weight: bold;
        color: white;
        
    }
    
    </style>
</head>
<body>
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">
                            <img src="assets/images/logo.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="index.html" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="coupon.jsp">Coupon</a></li>
                        </ul>        
                        <a class="menu-trigger">
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    
<!-- ***** Coupon Section Start ***** -->
<section class="coupon-section" style="margin-top: 100px;">
    <div class="container">
        <h2>Coupon Change Page</h2>
        <!-- Your coupon change form elements can go here -->
        <form id="coupon-form">
            <label for="time">Select Time:</label>
            <select id="time" name="time">
            	<option value="  No "> No </option>
                <option value="10-12">10-12</option>
                <option value="12-14">12-14</option>
                <option value="14-16">14-16</option>
                <option value="16-18">16-18</option>
                <option value="18-20">18-20</option>
            </select>
    <br>
    <label for="coupon">Enter 16-digit Coupon Code:</label>
    <input type="text" id="coupon-code" name="couponCode" maxlength="16" placeholder="Enter 16-digit coupon code">
    <br>
    <button type="submit">Change Coupon</button>
        </form>
    </div>
    <div style="display: inline-block; background-color: #f2f2f2; padding: 20px; border: 2px solid #ddd; margin-top: 20px; margin-left: 200px; width: 100%; max-width: 200px; box-sizing: border-box; text-align: center;">
    <!-- 네모 박스 내용 -->
</div>
    
</section>



<!-- Display the selected time overlaid on the image -->
<div style="position: relative; display: inline-block; margin-top: 20px; margin-left: 20px;"> <!-- Adjust margins as needed -->
    <img src="assets/images/Coupon.jpg" alt="Coupon Image" style="display: block;margin-left: 180px;">
    <div id="selected-time" style="position: absolute; top: 168px; left: 270px;">
        <span id="display-time">      No </span>
    </div>
</div>



<section class="coupon-section" style="margin-top: 50px; position: relative; text-align: center;">
</section>
<!-- ***** Coupon Section End ***** -->

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get references to relevant elements
        const couponForm = document.getElementById("coupon-form");
        const squareBox = document.querySelector('div[style*="margin-left: 200px;"]'); // 네모 박스의 스타일에 맞게 선택자를 설정해주세요

        // Add event listener to the form submission
        couponForm.addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission
            // Display the content in the square box
            squareBox.textContent = "e4f429e2cd14fcf";
            // You can also modify the styles or add additional content here if needed
        });
    });
</script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get references to relevant elements
        const timeSelect = document.getElementById("time");
        const displayTime = document.getElementById("display-time");
        const couponForm = document.getElementById("coupon-form");

        let selectedTime = ""; // Initialize selectedTime variable

        // Add event listener to the time select element
        timeSelect.addEventListener("change", function() {
            // Update the display-time element with the selected time
            selectedTime = timeSelect.value;
            displayTime.textContent = selectedTime;
        });

        // Add event listener to the form submission
        couponForm.addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission
            // Do something with the selectedTime value, e.g., store it in a database
            // You can also disable the form submission if needed
            couponForm.querySelector("button[type='submit']").disabled = true;
        });
    });
</script>
</body>
</html>