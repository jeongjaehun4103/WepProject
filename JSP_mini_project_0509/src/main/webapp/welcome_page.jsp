<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="today" value="<%=new java.util.Date() %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome page</title>
<style>
	* {margin: 0px; padding: 0px;}
	div {
		width: 100%;
		text-align: center;
		font-size: 40px;
		margin-top: 100px;
		margin-bottom: 150px;
	}
	footer {
		text-align: center;
	}
	#welcome {
		font-size: 30px;
	}
	#time, #footer {
		font-size: 20px;
	}
	
</style>
</head>
<body>
	<div>
		KCD쇼핑몰에 오신 것을 환영합니다.
	</div>
	<footer>
		<span id="welcome">Welcome to web market!</span><br>
		<span id="time">현재 접속 시간: <fmt:formatDate value="${today}" type="time"/></span><br><br>
		<span id="footer">ⓒ한국디지털 직업전문학교</span>
	</footer>
	
</body>
</html>