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
	http://localhost:8080/dynamic-web/jstl/exam02.jsp?type=S ��û��
	�����ڴ� ȯ���մϴ� �޼��� ���
	http://localhost:8080/dynamic-web/jstl/exam02.jsp?type=U
	�Ϲ� ����ڴ� ȯ���մϴ� �޽��� ���
 -->
 	<c:choose>
 		<c:when test="${ param.type == 'S' }">
 			<h2>�����ڴ� ȯ���մϴ�!</h2>
 		</c:when>
 		<c:when test="${ param.type == 'U' }">
 			<h2>�Ϲݻ���ڴ� ȯ���մϴ�</h2>
 		</c:when>
 		<c:otherwise>
 			<h2>�Ķ���Ͱ� �߸��Ǿ����ϴ�</h2>
 		</c:otherwise>
 	</c:choose>
 
 	<c:if test="${ param.type == 'S' }">
 		<h2>�����ڴ� ȯ���մϴ�</h2>
 	</c:if>
 	<c:if test="${ param.type eq 'U' }">
 		<h1>�ô��� AI ��Ŭ.��.��.�̡� �� ȯ���մϴ�</h1>
 	</c:if>
</body>

</html>