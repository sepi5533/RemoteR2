<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
	<meta name="viewport" content="width=devicewidth, initial-scale=1,shrink-to-fit=no"> 
	<meta name="description" content="Web design base on bootstrap & popper" />
	<title>강의평가 웹 사이트</title>

	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- CUSTUM CSS 추가 -->
	<link rel="stylesheet" href="./css/custom.css">
	<!--  defer: <script> 태그 요소에 도달하면 브라우저에 HTML 콘텐츠를 계속 다운로드 하도록 지시하는 속성  
		<script src="./js/jstest1.js" defer ></script>
	-->
	<!--
	 톰캣 수행 시 포트 오류 발생 조치 : netstat -ano | findstr 8080 ,
	 taskkill /f /pid  
	 -->
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	    <a class="navbar-brand " href="index.jsp" style="color:white;"><strong>Java Script Study</strong></a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    
	    <!--  테스트 메뉴 시작 -->
	    <div class="collapse navbar-collapse" id="navbar">
	    	<ul class="navbar-nav mr-auto">
	    		<li class="nav-item active">
	    			<a class="nav-link" href="index.jsp" style="color:white;"><strong>메인</strong></a>
	    		</li>
					<li class="nav-item dropdown">
	    			<a class="nav-link dropdown-toggle" id="dropdown" data-bs-toggle="dropdown"  style="color:white;"><strong>테스트 종류</strong></a>
	    			<ul class="dropdown-menu" aria-labelledby="dropdown">
	    				<li><a class="dropdown-item" href="WebServMake.jsp" target="_blink">Web Server 구축 준비사항</a></li>
	    				<li><a class="dropdown-item" href="AsyncDefer.jsp">Async와 defer 비교</a></li>
	    				<li><a class="dropdown-item" href="ScriptTest.jsp">Java Script Test</a></li>
	    				<li><a class="dropdown-item" href="RandomNumberTest.jsp">랜덤 숫자 맞추기</a></li>
	    				<li><a class="dropdown-item" href="LearnHtml.html" target="_blink" >HTML 학습</a></li>
	    			</ul>
	    		</li>
	     	</ul>
		<!--  테스트 메뉴 끝 -->	    	
	    </div>
	    
	</nav>
	

	 
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #ffffff;">
		웹 사이트 구축 및 Java 관련 참고 자료 모음... 
		FROM 2024년 6월부터 시작함... 
	</footer>
	<!--  html과 java script의 로딩 및 해석 순서를 보장하기 위해 <script> 문장을
		  footer 밑에 서술함. 
	 -->
	<!--  JQUERY 자바스크립트 추가 -->
	<script src="./js/jquery.min.js"></script>
	<!--  파퍼 자바스크립트 추가 -->
	<script src="./js/popper.js"></script>
	<!--  부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/bootstrap.bundle.min.js"></script>
</body>
</html>