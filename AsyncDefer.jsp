<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
	<meta name="viewport" content="width=devicewidth, initial-scale=1,shrink-to-fit=no"> 
	<title>강의평가 웹 사이트</title>

	<!-- 부트스트랩 CSS 추가 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- CUSTUM CSS 추가 -->
	<link rel="stylesheet" href="./css/custom.css">
	<!--  defer: <script> 태그 요소에 도달하면 브라우저에 HTML 콘텐츠를 계속 다운로드 하도록 지시하는 속성  
		<script src="./js/jstest1.js" defer ></script>
	-->
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
	    <a class="navbar-brand " href="index.jsp" style="color:white;">Java Script Study</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	   
	    <!--  테스트 메뉴 시작 -->
	    <div class="collapse navbar-collapse" id="navbar">
	    	<ul class="navbar-nav mr-auto">
	    		<li class="nav-item active">
	    			<a class="nav-link" href="index.jsp" style="color:white;">메인</a>
	    		</li>
	     	</ul>
	    </div>
		<!--  테스트 메뉴 끝 -->
	</nav>
	
	<p>
		 <br>1. async와 defer 모두 브라우저가 페이지의 다른 내용(DOM 등등)을 불러오는 동안 스크립트를 별도 스레드에서 
		    불러오게 만듭니다. 덕분에 스크립트를 가져오는 동안 페이지 로딩이 중단되지 않습니다.</br>
		 <br>2. async 속성을 지정한 스크립트는 다운로드가 끝나는 즉시 실행합니다. 이렇게 하면 현재 페이지의 렌더링을 중단하며,
		    특정 실행 순서가 보장되지 않습니다.</br>
		 <br>3. defer 속성을 지정한 스크립트는 순서를 유지한 채로 가져오며 모든 콘텐츠를 다 불러온 이후에 실행합니다.</br>
		 <br>4. 스크립트를 즉시 실행해야 하고 종속성이 없는 경우 async를 사용하세요.</br>
		 <br>5. 다른 스크립트에 의존하거나 DOM 로딩이 필요한 스크립트에는 defer를 사용하여 스크립트를 로드하고, 
		    원하는 순서에 맞춰서 script 요소를 배치하세요.</br>	
		    
		 <br> 출처 : https://developer.mozilla.org/ko/docs/Learn/JavaScript/First_steps/What_is_JavaScript </br>   
	</p>

    <button type="button" onclick="location.href='https://html.spec.whatwg.org/images/asyncdefer.svg';">Async & Defer 비교 </button>
</body>
</html>