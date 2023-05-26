<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"강길동,", "홍길동,", "윤길동,", "박길동,", " 김길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<c:forEach items="${ names }" var="name">
		${ name }&nbsp;
	</c:forEach>
	<br>
	
	<c:forEach begin="0" end="${ fn:length(names) }" var="i">
		${ names[i] }&nbsp;
	</c:forEach>
	
	<br>
	
	<c:forEach begin="0" end="4" var="i">
		${ names[i] }&nbsp;
	</c:forEach>
	
	<br>
	
	<c:forEach begin="0" end="${ length }" var="i">
		${ names[i] }&nbsp;
	</c:forEach>
	
	<br>
	
	${ names[0] }&nbsp;
	${ names[1] }&nbsp;
	${ names[2] }&nbsp;
	${ names[3] }&nbsp;
	${ names[4] }&nbsp;
	<br>
	
	년도선택 :
	
	<select>
		<c:forEach begin="1960" end="2023" var="year">
		
		<option>${ year }</option>
		</c:forEach>
		
	</select><br>

	<c:forEach begin = "1" end = "10" var = "i"> 
		${ i }
	</c:forEach>
</body>
</html>