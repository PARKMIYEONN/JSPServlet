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
	�α��� ����! <%=session.getAttribute("id") %>�� ȯ���մϴ�
	<a href="logout.jsp">�α׾ƿ�</a>
	<%} else {
		response.sendRedirect("login.jsp"); }%>
</body>
</html>