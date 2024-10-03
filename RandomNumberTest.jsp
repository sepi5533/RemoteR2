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
	<!--  defer: <script> 태그 요소에 도달하면 브라우저에 HTML 콘텐츠를 계속 다운로드 하도록 지시하는 속성  
		<script src="./js/jstest1.js" defer ></script>
	-->
	

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
		    <a class="navbar-brand " href="index.jsp" style="color:white;">Random Number guessing game</a>
		    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
		      <span class="navbar-toggler-icon"></span>
		    </button>
	    
		    <!--  테스트 메뉴 시작 -->
		    <div class="collapse navbar-collapse" id="navbar">
		    	<ul class="navbar-nav mr-auto">
		    		<li class="nav-item active">
		    			<a class="nav-link" href="index.jsp" style="color:white;">메인</a>
		     	</ul>
		    </div>
		<!--  테스트 메뉴 끝 -->
	</nav>
	<p>We have selected a random number between 1 and 100. See if you can guess it in 10 turns or fewer. We'll tell you if your guess was too high or too low.</p>

	<div class="form">
		<label for="guessField">Enter a guess: </label>
		<input type="number" min="1" max="100" id="guessField" class="guessField" />
		<input type="submit" value="Submit guess" class="guessSubmit" />
	</div>

	<div class="resultParas">
		  <p class="guesses"></p>
		  <p class="lastResult"></p>
		  <p class="lowOrHi"></p>
	</div>
	
	<footer class="bg-dark mt-4 p-1 text-center" style="color: #ffffff;">
		<br>웹 사이트 구축 및 Java 관련 참고 자료 모음...</br> 
		<br>FROM 2024년 6월부터 시작함...</br> 
	</footer>
		
	<script>

	let randomNumber = Math.floor(Math.random() * 100 ) + 1;
	

	const guesses    = document.querySelector(".guesses");
	const lastResult = document.querySelector(".lastResult");
	const lowOrHi    = document.querySelector(".lowOrHi");

	const guessSubmit = document.querySelector(".guessSubmit");
	const guessField  = document.querySelector(".guessField");

	let guessCount = 1;
	let resetButton;

	guessField.focus();          //사용자가 양식의 필드를 직접 클릭할 필요 없이 입력 필드에 커서 위치
	
	function checkGuess() {
		  const userGuess = Number(guessField.value);
		  if (guessCount === 1) {
		    guesses.textContent = "Previous guesses: ";
		  }
		  guesses.textContent += userGuess + " ";

		  if (userGuess === randomNumber) {
		    lastResult.textContent = "Congratulations! You got it right!";
		    lastResult.style.backgroundColor = "green";
		    lowOrHi.textContent = "";
		    setGameOver();
		  } else if (guessCount === 10) {
		    lastResult.textContent = "!!!GAME OVER!!!";
		    lowOrHi.textContent = "";
		    setGameOver();
		  } else {
		    lastResult.textContent = "Wrong!";
		    lastResult.style.backgroundColor = "red";
		    if (userGuess < randomNumber) {
		      lowOrHi.textContent = "Last guess was too low!";
		    } else if (userGuess > randomNumber) {
		      lowOrHi.textContent = "Last guess was too high!";
		    }
		  }

		  guessCount++;
		  guessField.value = "";
		  guessField.focus();
		}

		guessSubmit.addEventListener("click", checkGuess);
		
		function setGameOver() {
			  guessField.disabled = true;
			  guessSubmit.disabled = true;
			  resetButton = document.createElement("button");
			  resetButton.textContent = "Start new game";
			  document.body.append(resetButton);
			  resetButton.addEventListener("click", resetGame);
		}
		
		function resetGame() {
			  guessCount = 1;

			  const resetParas = document.querySelectorAll(".resultParas p");
			  for (const resetPara of resetParas) {
			    resetPara.textContent = "";
			  }

			  resetButton.parentNode.removeChild(resetButton);

			  guessField.disabled = false;
			  guessSubmit.disabled = false;
			  guessField.value = "";
			  guessField.focus();

			  lastResult.style.backgroundColor = "white";

			  randomNumber = Math.floor(Math.random() * 100) + 1;
			}
  
  
	</script>		
	<!--  파퍼 자바스크립트 추가 -->
	<script src="./js/popper.js"></script>
	<!--  부트스트랩 자바스크립트 추가 -->
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/bootstrap.bundle.min.js"></script>
	
</body>
</html>