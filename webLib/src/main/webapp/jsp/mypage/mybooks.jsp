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
		<h1>���� ���</h1>
		<table>
			<thead>
				<tr>
					<th>���� ��ȣ |</th>
					<th>���� ���� |</th>
					<th>�� �� �� |</th>
					<th>�� �� �� |</th>
					<th>�� �� �� |</th>
					<th>�� �� �� |</th>
					
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
							<input type="submit" value="�����ݳ�">
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