<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>  
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
	<meta name="viewport" content="width=devicewidth, initial-scale=1,shrink-to-fit=no"> 
	<title>Java Script Test </title>
	<!-- 
		 * querySelectorAll() 함수와 addEventListener()를 사용하여 모든 버튼의 click 이벤트 처리
		 * document.addEventListener("DOMContentLoaded" : HTML 본문 전체를 불러와 읽었다는 것을 
		 *         나타내는 이벤트를 수신하는 이벤트 수신기( 외부 js 파일 사용시에는 defer 속성 사용)
		 * defer와 async 기능 비교 URL : https://html.spec.whatwg.org/images/asyncdefer.svg
	 -->
	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- CUSTUM CSS 추가 -->
	<link rel="stylesheet" href="./css/custom.css">
	
	
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		    <a class="navbar-brand " href="index.jsp" style="color:white;">Java Script Study</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar">
		      <span class="navbar-toggler-icon"></span>
		    </button>
	    
		    <!--  메인 메뉴로 돌아가기 start -->
		    <div class="collapse navbar-collapse" id="navbar">
		    	<ul class="navbar-nav mr-auto">
		    		<li class="nav-item active">
		    			<a class="nav-link" href="ScriptTest.jsp" style="color:white;">이전 화면</a>
		    		</li>
		     	</ul>
		    </div>
		<!--  메인 메뉴로 돌아가기 end -->
		<!--  요약 내용 서브젝트 Select Start -->
		<form class="form-control-sm ">
			<select class="form-select"  >
			  <option selected>JavaScript 구성요소</option>
			  <option value="1">조건문</option>
			  <option value="2">반복문</option>
			  <option value="3">JSON</option>
			  <option value="6">객체</option>
			  
			</select>
			<div id="buildingBlock" class="form-text" style="color: white;">
  				설명을 보고자하는 구성 요소를 선택하시오!!!</div>			
		</form>
		
	</nav>
	<p></p>
    <script>
		const select = document.querySelector("select");
		const para = document.querySelector("p");

		select.addEventListener("change", getSummaryContent);
																			getSummaryContent
		function getSummaryContent() {
			  const choice = select.value;
			  alert('choice : ' + choice)
			  if (choice == "1") {
			    location.href='./testHtml/JSBLOCKS1.html' ;
			    para.textContent =
				     "JavaScript가 정상적으로 호출되었는지 확인하기 위한 문구입니다.";
			  } else if (choice == "2") {
					location.href='./testHtml/JSLOOP.html';
			  } else if (choice == "3") {
					location.href='https://developer.mozilla.org/ko/docs/Learn/JavaScript/Objects/JSON';
			  }	else if (choice == "6") {
					location.href='./testHtml/JSObject.html';
			  }
			  
		 }
	</script>
		
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