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
		<h1>도서 목록</h1>
		<table>
			<thead>
				<tr>
					<th>회원 번호 |</th>
					<th>아이디 |</th>
					<th>이 름 |</th>
					<th>전화번호 |</th>
					<th>생년월일 |</th>
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