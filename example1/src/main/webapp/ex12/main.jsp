<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- ���ڿ� : ${"test"}<br>
����	 : ${20}<br>
�ε��Ҽ��� : ${3.14} --%>

<%-- 
	<%
	Map<String, String> map = new HashMap<>();
	map.put("1", "a");
	map.put("2", "b");
	map.put("3", "c");
	String a = map.get("1");
	pageContext.setAttribute("map", map);
	%>
	map[1] :
	<%=a%><br> 
	${map["1"]}<br>
	${100/20}
	${true&&false}<br> --%>
</body>
</html>