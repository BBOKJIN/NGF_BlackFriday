<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
    
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
  }

  .product {
    display: flex;
    align-items: center;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  .product-image {
    flex: 1;
    max-width: 50%;
    padding: 20px;
  }

  .product-image img {
    max-width: 100%;
    height: auto;
  }

  .product-details {
    flex: 1;
    padding: 20px;
  }

  .product-title {
    font-size: 24px;
    margin-bottom: 10px;
  }

  .product-description {
    font-size: 16px;
    margin-bottom: 20px;
  }

  .product-price {
    font-size: 20px;
    color: #e44d26;
  }

  .quantity-input {
    display: flex;
    align-items: center;
    margin-bottom: 20px;
  }

  .quantity-label {
  	margin-right: 10px;
  	font-size: 16px;
  	vertical-align: bottom; /* 수량을 적는 칸의 바닥과 맞춤 */
	}

  .quantity-field {
  	width: 50px;
  	height: 25px; /* 높이를 조절하여 '수량' 글씨와 맞출 수 있음 */
  	padding: 5px;
  	text-align: center;
  	line-height: 20px; /* '수량' 글씨와 맞추기 위해 설정 */
  	vertical-align: bottom; /* 수량을 적는 칸의 바닥과 맞춤 */
	}

.buy-button,
.add-button {
    width: 150px; /* 원하는 고정된 가로 길이 */
    height: 40px; /* 높이 설정 */
    margin-right: 10px; /* 버튼 간격 조절 */
    font-size: 18px;
    background-color: #e44d26;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
    display: inline-block; /* 인라인 블록 요소로 표시 */
    line-height: 40px; /* 버튼 높이와 동일한 값으로 설정 */
}

  .buy-button:hover {
    background-color: #FFCF63;
  }
  .add-button:hover {
    background-color: #FFCF63;
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
                            <li class="scroll-to-section"><a href="indexmain.jsp" class="active">Home</a></li>
                            
                            </li>
                            <li class="scroll-to-section"><a href="indexmain.jsp">login</a></li>
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

  <div class="container">
  <div style="margin-top: 100px;">
    <div class="product">
      <div class="product-image">
        <img src="assets/images/galaxy.jpg">
      </div>
      <div class="product-details" style="margin-top: 100px;">
        <h1 class="product-title">Galaxy Z Flip5</h1>
        <p class="product-description">
  나의 폰이 나의 세계를 어디까지 펼쳐줄 수 있을까?<br>
  한층 더 멋져진 플렉스 윈도우는 One UI로 커스텀까지 가능해졌으니까.<br>
  엣지있는 앵글로 셀피를 찍을 수 있는 카메라에, 배터리는 더 길어졌으니까.<br>
  일상에도 주머니에도 완벽한 핏. 갤럭시 Z 플립5를 만나보세요.<br>
  갤럭시 Z 플립5 / Join the flip side
</p>
        <p class="product-price">$150</p>
        <p class="product-stock">재고: 50</p>
        <p class="product-shipping">배송료: 무료</p>
        <div class="quantity-input">
          <label class="quantity-label" for="quantity">수량:</label>
          <input class="quantity-field" type="number" id="quantity" min="1" value="1">
        </div>
        <button class="add-button">Add to Cart</button>
        <button class="buy-button">Buy now</button>
      </div>
    </div>
  </div>
</body>
</html>
