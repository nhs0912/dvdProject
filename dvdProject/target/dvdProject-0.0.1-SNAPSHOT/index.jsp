<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>DVD Project</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resource/css/reset.css">

    <link rel='stylesheet prefetch'
          href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
    <link rel='stylesheet prefetch'
          href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resource/css/style.css">
    <style type="text/css">
        #Username {
        }
    </style>


</head>

<body>


<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
    <h1>DVD Project</h1>
    <span><%-- <i class='fa fa-code'> </i>--%> by <a
            href='#'>Noh HeeSeok</a></span>
</div>
<div class="rerun">
    <a href="/main.do">main으로 가기</a>
</div>
<div class="container">
    <div class="card"></div>
    <div class="card">
        <h1 class="title">Login</h1>
        <form>
            <div class="input-container">
                <input type="text" id="Username" required="required"/> <label
                    for="Username">Username</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="login_Password" required="required"/> <label
                    for="login_Password">Password</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button>
                    <span>로그인</span>
                </button>
            </div>
            <div class="footer">
                <a href="#">Forgot your password?</a>
            </div>
        </form>
    </div>
    <div class="card alt">
        <div class="toggle"></div>
        <h1 class="title">
            Register
            <div class="close"/>
        </h1>
        <form>
            <div class="input-container">
                <input type="text" id="id" required="required"/> <label
                    for="Username">ID</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="text" id="Username" required="required"/> <label
                    for="Username">Username</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="signup_Password" required="required"/> <label
                    for="signup_Password">Password</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="Repeat Password" required="required"/>
                <label for="Repeat Password">Repeat Password</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button>
                    <span>Next</span>
                </button>
            </div>
        </form>
    </div>
</div>
<!-- Portfolio-->
<a id="portfolio" href="#" title="View my portfolio!"><i
        class="fa fa-link"></i></a>
<!-- CodePen-->
<a id="codepen" href="#" title="Follow me!"><i
        class="fa fa-codepen"></i></a>
<script
        src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="${pageContext.request.contextPath}/resource/js/index.js"></script>


</body>
</html>
