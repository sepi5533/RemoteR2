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
	
	<!--  span 테스트를 위해 ... -->
	<style>
		.test_subject {
			color: green;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		    <a class="navbar-brand " href="index.jsp" style="color:white;">Java Script Study</a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
		      <span class="navbar-toggler-icon"></span>
		    </button>
	    
		    <!--  메인 메뉴로 돌아가기 start -->
		    <div class="collapse navbar-collapse" id="navbar">
		    	<ul class="navbar-nav mr-auto">
		    		<li class="nav-item active">
		    			<a class="nav-link" href="index.jsp" style="color:white;">메인</a>
		    		</li>
		     	</ul>
		    </div>
		<!--  메인 메뉴로 돌아가기 end -->
	</nav>
	
	<button type="button" >Script 작동 테스트 버튼</button>
	
	<div class="lastest-page">
  		<h2>오늘의 마지막 학습 위치</h2>
  		<a title="lastest-page" href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous" target="_blank">
  	   		<span class="test_subject" >이전 학습  페이지</span>
  	    </a>
    </div>
	
	<!--  JavaScript 구성요소   -->
	<div class="javascript_building_blocks">
		<h2><br>JavaScript 요약</h2>
		<ul>
			<li><a href="javascript_summary.jsp" >JavaScript 요약</a></li>
		</ul>
	</div>


	<!--  JavaScript 참고 사이트  -->
	<div class="reference-site">
		<h2><br>JavaScript 참고 사이트</h2>
		<ul>
			<li><a href="https://developer.mozilla.org/ko/docs/Learn/JavaScript/Building_blocks" target="_blink">JavaScript 구성요소</a></li>
			<li><a href="https://developer.mozilla.org/ko/docs/Web/JavaScript/Guide" target="_blink">JavaScript 안내서</a></li>
			<li><a href="https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference" target="_blink">JavaScript 참고서</a></li>
			<li><a href="https://developer.mozilla.org/ko/docs/Web/API/EventTarget/addEventListener" target="_blink">addEventListener</a></li>
			<li><a href="jsguessGame.html"  target="_blink">js game test </a></li>
		</ul>
	</div>
		
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
	
	<!--  Test Script start -->
		<!--  defer: <script> 태그 요소에 도달하면 브라우저에 HTML 콘텐츠를 계속 다운로드 하도록 지시하는 속성  
		<script src="./js/jstest1.js" defer ></script>
	-->
	 
	<script>
		document.addEventListener("DOMContentLoaded", () => {
			  function createParagraph() {
			    const para = document.createElement("p");
			    para.textContent = "HTML 내부에 JS 코딩 예제 : addEventListener 사용 !";
			    document.body.appendChild(para);
			  }
	
			  const buttons = document.querySelectorAll("button");
	
			  for (const button of buttons) {
			    button.addEventListener("click", createParagraph);
			  }
			});

	</script>
	<!--  Test Script end -->
		
</body>
</html>