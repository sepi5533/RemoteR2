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
	<form>
		<select>
			<option value="9" selected>--Make a choice--</option>
			<option value="1" >Hello World!!</option>
			<option value="2" >Bye everybody</option>
		</select>
	</form>
	<div id=first-para><p></p></div>
	<div id=last-para><p></p></div>
	<script>
		
		const paraP   = document.querySelector("#first-para");
		const paraP1  = document.querySelector("#last-para");
		const select2 = document.querySelector("select");
		
		select2.addEventListener("change", farewell);
		
		// const choice  = select2.value; // 함수 외부에 선언하면 초기 selected 값이 세팅됨   
		
		function farewell () {
			/* 변수 choice는 함수 내부에 선언해야 함. 함수 외부에 선언하는 경우 값은
			   초기 selected 값이 setting 됨
			 */
			const choice = select2.value;  
			const person = {
					//name : ['Bob' , 'Smith'] ,
					name : {
						first:'Bob-first name',
						last :'Smith'
					},
					age  : 32,
					gender: 'male',
					interests : ['music', 'skiing'],
					bio : function() {
						alert( this.name[0] + ' ' + this.name[1]);
					} ,
					greeting : function () {
						alter("function 2");
					}
					
			};
			 // alert('choice :' + choice)
			if ( choice == 1) {
				//paraP.textContent = person.name[0];
				//person.bio()
				// paraP.textContent = person.name.first;
				 paraP.textContent = person['name']['first']; // 연관 배열
				 
			} else if (choice == 2 ){
				//person['name']['last'] = 'last name test';
				var paraP1Name  = 'gender';
				var paraP1Value = 'female';
				person[paraP1Name] = paraP1Value;
				
				paraP1.textContent = person[paraP1Name];
			} else {
				paraP.textContent = '';
				paraP1.textContent = '';
			}
		}	
			
	</script>
</body>
</html>