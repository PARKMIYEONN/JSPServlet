<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String filePath = "C:/Users/User/eclipse-workspaceJSP/example1/src/main/webapp/ex4/idpw.txt";
	
	boolean loginsg = false;
	try(BufferedReader reader = new BufferedReader(new FileReader(filePath))){
		String line;
		while((line = reader.readLine()) != null){
			
		String[] userData = line.split(",");
		if(userData.length == 2 && userData[0].equals(id) && userData[1].equals(password)){
			loginsg = true;
			break;
		}
		}
	} catch(Exception e){
		e.printStackTrace();
}
	if(loginsg){
		session.setAttribute("id", id);
		response.sendRedirect("main.jsp");
	} else{
		response.sendRedirect("error.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>