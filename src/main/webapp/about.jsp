<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="assets/css/about.css"> <!-- Link to your about.css file in the css folder -->
  <script src="assets/js/about.js"></script>
</head>
<body>
  <div class="container" id="container">
    <div class="form-container sign-up-container">
      <form action="#">
        <h1>Create Account</h1>
        <div class="social-container">
        </div>
        <span>or use your email for registration</span>
        <input type="text" placeholder="Name" />
        <input type="email" placeholder="Email" />
        <input type="password" placeholder="Password" />
        <button id="signup-button"><a href="indexmain.jsp" style="color: white;">Sign Up</a></button>
      </form>
    </div>
    <div class="form-container sign-in-container">
      <form method = "post" action="loginAction.jsp">
        <h1>Sign in</h1>
<!--        <div class="social-container">
          <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
          <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
          <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
        </div>-->
        <span>or use your account</span>
        <input type="email" class="form-control" placeholder="Email"  name ="userEmail" maxlength='100'/>
        <input type="password" class="form-control" placeholder="Password" name ="userPassword" maxlength='20'/>
        <a href="#">Forgot your password?</a>
        <button id="signup-button" class="btn btn-primary form-control">Sign Up</button>
      </form>
    </div>
    <div class="overlay-container">
      <div class="overlay">
        <div class="overlay-panel overlay-left">
          <h1>Welcome Back!</h1>
          <p>To keep connected with us please login with your personal info</p>
          <button class="ghost" id="signIn">Sign In</button>
        </div>
        <div class="overlay-panel overlay-right">
          <h1>Hello, Friend!</h1>
          <p>Enter your personal details and start journey with us</p>
          <button class="ghost" id="signUp">Sign Up</button>
        </div>
      </div>
    </div>
  </div>
  
  <script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
      container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
      container.classList.remove("right-panel-active");
    });
  </script> <!-- JavaScript �ڵ� -->
</body>
</html>
