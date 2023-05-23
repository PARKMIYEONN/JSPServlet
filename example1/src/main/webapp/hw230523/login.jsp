<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<% if(session.getAttribute("id") != null) {%>
	이미 로그인 중 입니다.<br/>
	<a href="main.jsp">메인 서비스로 이동합니다</a>
	<%} else { %>
	<form method="post" action="example1/IDPW2">
	<label for="id">id : </label>
	<input type="text" id="id" name="id" required><br>
	<label for="password">비밀번호 : </label>
	<input type="password" id="password" name="password" required><br>
	<input type="submit" value="로그인">
	</form>
	<% } %>
	
</body>
</html>