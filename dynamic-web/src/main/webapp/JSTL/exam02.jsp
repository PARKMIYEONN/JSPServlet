<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
	http://localhost:8080/dynamic-web/jstl/exam02.jsp?type=S 요청시
	관리자님 환영합니다 메세지 출력
	http://localhost:8080/dynamic-web/jstl/exam02.jsp?type=U
	일반 사용자님 환영합니다 메시지 출력
 -->
 	<c:choose>
 		<c:when test="${ param.type == 'S' }">
 			<h2>관리자님 환영합니다!</h2>
 		</c:when>
 		<c:when test="${ param.type == 'U' }">
 			<h2>일반사용자님 환영합니다</h2>
 		</c:when>
 		<c:otherwise>
 			<h2>파라미터가 잘못되었습니다</h2>
 		</c:otherwise>
 	</c:choose>
 
 	<c:if test="${ param.type == 'S' }">
 		<h2>관리자님 환영합니다</h2>
 	</c:if>
 	<c:if test="${ param.type eq 'U' }">
 		<h1>시대의 AI ★클.로.빵.미☆ 님 환영합니다</h1>
 	</c:if>
</body>

</html>