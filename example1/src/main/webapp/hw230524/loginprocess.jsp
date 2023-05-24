<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="login" class="ex10.LoginBean" />
   <jsp:setProperty name="login" property="id" />
   <jsp:setProperty name="login" property="passwd" />
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(login.dbCheck()){
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
	} else{
		response.sendRedirect("error.jsp");
	}
%>
</body>
</html>