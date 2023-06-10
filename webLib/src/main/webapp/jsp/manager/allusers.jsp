<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</header>
	<section>
		<h1>���� ���</h1>
		<table>
			<thead>
				<tr>
					<th>ȸ�� ��ȣ |</th>
					<th>���̵� |</th>
					<th>�� �� |</th>
					<th>��ȭ��ȣ |</th>
					<th>������� |</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
						<td>${user.no}</td>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.phoneNo}</td>
						<td>${user.birthDay}</td>		
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</section>
	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>	