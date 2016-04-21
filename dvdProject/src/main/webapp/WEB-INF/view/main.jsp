<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kr">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/bootstrap.min.js"></script>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap-theme.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/search.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 -->
<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 -->
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>DVD 관리</title>
<!-- Bootstrap core CSS -->
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="jumbotron.css" rel="stylesheet">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body onload="myFunction()" style="margin: 0;">
	<div id="loader"></div>
	<div style="display: none;" id="myDiv" class="animate-bottom">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<%--menu --%>
					<a class="navbar-brand" href="#">DVDProject</a> <a class="navbar-brand" href=<c:url value="/dvdView"/>>DVD 보기</a> <a class="navbar-brand" href="<c:url value="/hello"/>">DVD 검색</a> <a class="navbar-brand" href="#">회원조회</a> <a class="navbar-brand" href="#">DVD방 관리</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<form class="navbar-form navbar-right">
						<%-- <div class="form-group">
							<input type="text" placeholder="Email" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password"
								class="form-control">
						</div>
						
						<button type="submit" class="btn btn-success">Sign in</button> --%>
						<input id="searchInput" type="search" class="form-control" placeholder="영화  또는 회원 검색">
						<button type="button" class="btn btn-info">
							<span class="glyphicon glyphicon-search"></span> Search
						</button>
						<button type="button" class="btn btn-success" data-toggle="modal" data-target="#signUpFormModal">DVD방 회원가입</button>
						<button type="button" class="btn btn-danger" onclick="location.href='/dvdProject'">로그아웃</button>
					</form>
				</div>
				<!--/.navbar-collapse -->
			</div>
		</nav>
		<!-- Modal -->
		<div id="signUpFormModal" class="modal fade" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<form class="form-horizontal" style="background-color: white">
					<fieldset>
						<!-- Form Name -->
						<legend>
							<h1 style="text-align: center">현대 DVD방 회원가입</h1>
						</legend>
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="Name">이름</label>
							<div class="col-md-4">
								<input id="Name" name="Name" type="text" placeholder="이름" class="form-control input-md" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-4 control-label" for="phoneInputText">전화번호</label>
							<div class="col-md-4">
								<input id="phoneInputText" name="phoneInputText" type="text" placeholder="010-1234-1234" class="form-control input-md" required="required">
									
							</div>
							<button id="phoneConfirm" name="phoneConfirm" class="btn btn-success">중복확인</button>
						</div>
												
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="emailInputText">Email</label>
							<div class="col-md-4">
								<input id="emailInputText" name="emailInputText" type="text" placeholder="이메일 형식을 지켜주세요" class="form-control input-md" required>
							</div>
								<button id="emailConfirm" name="emailConfirm" class="btn btn-success">중복확인</button>
						</div>
						<!-- Button -->
						<!--  <div class="form-group">
							<label class="col-md-4 control-label" for="emailConfirm">Email 확인</label>
							<div class="col-md-4">
							
							</div>
						</div> -->
						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="birthYear">생년월일</label>
							<div class="col-md-4">
								<input id="birthYear" name="birthYear" type="text" placeholder="ex)2016-09-12" class="form-control input-md" required="required">
							</div>
						</div>
						<%-- 
						Password input
						<div class="form-group">
							<label class="col-md-4 control-label" for="passInput">Password</label>
							<div class="col-md-4">
								<input id="passInput" name="passInput" type="password"
									placeholder="길이 6-20자" class="form-control input-md" required>

							</div>
						</div>

						Password input
						<div class="form-group">
							<label class="col-md-4 control-label" for="passInputConfirm">Password
								Confirm</label>
							<div class="col-md-4">
								<input id="passInputConfirm" name="passInputConfirm"
									type="password" placeholder="비밀번호 확인"
									class="form-control input-md" required>

							</div>
						</div> --%>
						<!-- Multiple Radios -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="genderRadio">Gender(성별)</label>
							<div class="col-md-4" required="required">
								<div class="radio">
									<label for="genderRadio-0"> <input type="radio" name="genderRadio" id="genderRadio-0" value="1" checked="checked"> 남자(male)
									</label>
								</div>
								<div class="radio">
									<label for="genderRadio-1"> <input type="radio" name="genderRadio" id="genderRadio-1" value="2"> 여자(female)
									</label>
								</div>
							</div>
						</div>
						<!-- Button (Double) -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="submitButton"></label>
							<div class="col-md-8">
								<button id="submitButton" name="submitButton" class="btn btn-success">Submit(제출)</button>
								<button id="cancleButton" type="button" class="btn btn-danger" data-dismiss="modal">Cancel(취소)</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1 style="text-align: center;">현대 DVD</h1>
			
		</div>
		<div class="container">
			<!-- Example row of columns -->
			<div class="row">
				<div class="col-md-4">
					<h2>Heading</h2>
					<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
					</p>
				</div>
				<div class="col-md-4">
					<h2>Heading</h2>
					<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
					</p>
				</div>
				<div class="col-md-4">
					<h2>Heading</h2>
					<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
					<p>
						<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
					</p>
				</div>
			</div>
			<hr>
			<footer>
				<p>&copy; JustOne Company 2016</p>
			</footer>
		</div>
		<!-- /container -->
		<!-- Bootstrap core JavaScript
    ================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="../../dist/js/bootstrap.min.js"></script>
		<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
		<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	</div>
	<script>
		
	<%--페이지 로딩 이미지 보여주기 --%>
		$(document).ready(function() {
			$(window).load(function() {
				$('#loader').hide();
				$('#myDiv').show();
			});
		});
	</script>
</body>
</html>
