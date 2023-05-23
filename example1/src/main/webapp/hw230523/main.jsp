<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% if(session.getAttribute("id") != null){ %>
	로그인 성공! <%=session.getAttribute("id") %>님 환영합니다
	<a href="logout.jsp">로그아웃</a>
	<%} else {
		response.sendRedirect("login.jsp"); }%>
</body>
</html>