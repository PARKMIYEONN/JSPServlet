<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title her
</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMypage.jsp"/>
	</header>
		<section>
		<h1>도서 목록</h1>
		<table>
			<thead>
				<tr>
					<th>도서 번호 |</th>
					<th>도서 제목 |</th>
					<th>글 쓴 이 |</th>
					<th>출 판 사 |</th>
					<th>대 여 일 |</th>
					<th>반 납 일 |</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="mybook" items="${ mybooks }">
					<tr>
						<td>${mybook.bookNO}</td>
						<td>${mybook.bookTitle}</td>
						<td>${mybook.bookWriter}</td>
						<td>${mybook.bookPublisher}</td>
						<td>${mybook.rntDate}</td>
						<td>${mybook.rtDate}</td>
						
						
							<td>
							
							<form action="returnbook.do" method="POST">
							<input type="hidden" name="bookNO" value="${ mybook.bookNO }">
							<input type="submit" value="도서반납">
							</form>
							</td>
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