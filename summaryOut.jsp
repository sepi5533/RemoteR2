<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String  selectOption =null;
	
	if(request.getParameter("buildingBlock") != null ){
		selectOption = request.getParameter("buildingBlock");
	}

	 if (selectOption.equals("1")) {		
		  	PrintWriter script = response.getWriter();
		  	
		  	script.println("<script>");			
	 		script.println("location.href = './testHtml/JSBLOCKS1.html';" );
	 		script.println("target='_blank';"); 
		  	script.println("</script>");			
		  	script.close();		
	 } 
		
%>
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
	
</head>
<body>

</body>
</html>
