<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�α��� ������</h1>
	<% if(session.getAttribute("id") != null) {%>
	�̹� �α��� �� �Դϴ�.<br/>
	<a href="main.jsp">���� ���񽺷� �̵��մϴ�</a>
	<%} else { %>
	<form method="post" action="example1/IDPW2">
	<label for="id">id : </label>
	<input type="text" id="id" name="id" required><br>
	<label for="password">��й�ȣ : </label>
	<input type="password" id="password" name="password" required><br>
	<input type="submit" value="�α���">
	</form>
	<% } %>
	
</body>
</html>