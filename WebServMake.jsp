<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>    
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
	<meta name="viewport" content="width=devicewidth, initial-scale=1,shrink-to-fit=no"> 
	<title>Web Server 구축 준비 사항 </title>
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
<p>
 <pre><code>
 - work-space : D:\temp\java-test-workspace

이클립스에서 .java  .jsp 파일 실행 시 내부 웹 브라우서 사용 옵션 설정 
  -  window>preference>General>Web Browser 에서 internal web browser로 선택 
&lt;< 이클립스 자바 프로젝트 종류  &gt;
  - Maven Project
    POM(프로젝트 객체 모델)의 개념을 기반으로 프로젝트 관리에 필요한 환경 설정과 라이브러리에 대한 의존성을 관리,
    플러그인을 기반으로 프로젝트 빌드, 보고, 문서 기능 등을 관리할 수 있음. - pom.xml 파일에 정보 저장
    1) 메이븐 의존성(Dependency) 관리 
       프로젝트에 필요한 라이브러리(JAR 파일)들을 직접 찾아서 다운로드하고 프로젝트 라이브러리에 추가하여 
       사용하였음(WebContent>WEB-INF>lib). 이에 프로젝트에서 사용되는 라이브러리의 종류와 버전이 각각
       달라져 프로젝트를 통합적으로 빌드할 경우 라이브러리 버전 충돌과 같은 다양한 문제가 발생 .
       이를 해결하기 위해 메이븐에서 라이브러리 다운로드 및 의존성에 대한 관리를 지원. 즉, pom에서 선언된
       "&lt;dependency&gt;" 설정으로 빌드 및 배포에 필요한 JAR파일들을 로컬 저장소(또는 원격 저장소)에 다운로드 받아서
       관리하고 사용한다.
       
    2) 메이븐 저장소(Repository)
       기본적인 로컬 저장소 : "C:\Users\{사용자계정}\.m2\repository"에 저장 : C:\Users\yglee\.m2\repository
    
    3) 메이븐 프러그인
       메이븐은 프로젝트 빌드나 보고 시에 플러그인을 사용. POM에 선언된 "&lt;build>"의 &lt;plugin&gt;"설정으로
       빌드할 때 사용. &lt;reporting&gt;의 &lt;plugin&gt;의 설정으로 사이트 생성 중에 진행 상태를 보고서로 작성할 때 사용 
       
    4) 메이븐 설치 확인 
       Help>About Eclipse IDE => 아이콘 리스트에서 "m2"를 클릭
          
    https://carrotweb.tistory.com/19
  - Java EE EAR project
  - Dynamic Web Project
    톰캣 등 Servlet Container를 이용하여 Servlet 을 작성하는 프로젝트
    
  - EJB(Enterprise JavaBeans) project : 대규모 분산 객체 시스템을 구축하기 위한 기술 또는 자바 
  - Connector project
  - Java EE application client project
  - generic deployable web project (Static Web Project)
    순수하게 웹 컨텐츠로만 구성되어 있는 웹 컨텐츠를 위한 프로젝트(Html, JavaScript, CSS 정도)
  - JPA(Java Persistent API) project 
  
  
  &lt; JSP vs Servlet &gt;
    - JSP는 자바를 이용한 Server-Side 스크립트 언어로 HTML 안에 Scriptlet으로 자바 소스 코드를 포함하고 있다.
    와스에서 실행될 때 동적으로 javax.servlet.http.HttpServlet 클래스를 상속받은 자바 소스 코드로 변환되고
    컴파일되어 실행됨. 이처럼 JSP 파일을 Servlet 클래스로 변환하고 실행시켜 주는 역할을 하는 프로그램을 Servlet
    Container 라고 한다. 
    
    - Servlet은 자바를 이용해 웹 페이지를 동적으로 생성하는 Server-side 프로그램으로 자바 소스 코드안에 
      HTML을 포함하고 있다. 
      
      
&lt; Dynamic Web Project 생성 : JSP와 같이 동적인 웹페이지를 가지는 웹 애플리케이션 개발 (서버, 자바, DB연결 )
  - Tomcat Server Runtime 설정
    javax.servlet.http.HttpServlet을 찾을 수 없다는 오류 발생 시...
       Project>Properties> Java Build Path => Libraries => Add Library => 
       Server Runtime => Tomcat8 
       
    - 이름이 [Test]과 [com.yglee.javatest.ServletTest]인 두 서블릿들 모두 
       url-pattern [/ServletTest]에 매핑되어 있는데, 이는 허용되지 않습니다.       
       
       web.xml과 Servlet 프로그램에 annotation을 같이 정의한 경우 발생 : 둘 중 하나만 정의하여야 함.
    
  - Dynamic Web module version


-   ndb796.tistory.com/35 : 나동빈 

    톰캣 수행 시 포트 오류 발생 조치 : netstat -ano | findstr 8080 , taskkill /f /pid 
    
    - 웹 화면 설계 
      . 관련 소프트웨어 : bootstrap : D:\개인문서\JSP_강의평가프로젝트\bootstrap-5.3.3-dist\bootstrap-5.3.3-dist
                                bootstrap.min.css => /webapp/css 폴더로 copy 
                                bootstrap.min.js  => /webapp/js 폴더로  copy 
                    jquery    : D:\개인문서\JSP_강의평가프로젝트
                                jquery-3.7.1.min.js 파일을 /webapp/js/ 폴더로 copy : 사용하기 쉬운 이름으로 변경 가능 ( jquery.min.js 등)
                    popper    : D:\개인문서\JSP_강의평가프로젝트   ( popper.js 파일을 /webapp/js 폴더로 copy    
    
 </code></pre>
</p>
</body>
</html>