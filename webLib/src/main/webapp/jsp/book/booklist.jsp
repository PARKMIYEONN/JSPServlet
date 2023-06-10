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
					<th>���� ��ȣ |</th>
					<th>���� ���� |</th>
					<th>�� �� �� |</th>
					<th>�� �� �� |</th>
					<c:if test="${ loginUser.no eq '1' }"><th>���� ���� |</th></c:if>
					<c:if test="${ loginUser.no != '1' }"><th>�� �� |</th></c:if>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${sbook}">
					<tr>
						<td>${book.bookNO}</td>
						<td>${book.bookTitle}</td>
						<td>${book.bookWriter}</td>
						<td>${book.bookPublisher}</td>
						<c:if test="${ loginUser.no eq '1' }">
						<td>
						<c:choose>
								<c:when test="${book.rented_book eq '1'}">
                                        ���� ��
                                    </c:when>
								<c:otherwise>
                                        ���� ���� ��
                                    </c:otherwise>
							</c:choose></td></c:if>
						<c:if test="${ loginUser.no != '1' }"><td>
						<c:choose>
								<c:when test="${book.rented_book eq '1'}">
            					���� �Ұ�
        						</c:when>
								<c:otherwise>
							<form action="rentbook.do" method="POST">
								<input type="hidden" name="bookNO" value="${ book.bookNO }">
								<input type="hidden" name="id" value="${ loginUser.id }">
								<input type="submit" value="�����ϱ�">
							</form>
								</c:otherwise>
							</c:choose>
							</td></c:if>
							
							<c:if test="${ loginUser.no eq '1' }">
							<c:if test="${ book.rented_book eq '0' }"><td>
							 <form action="deletebook.do" method="post" onsubmit="return confirm('�����Ͻðڽ��ϱ�?');">
                            <input type="hidden" name="bookNO" value="${book.bookNO}" />
                            <input type="submit" value="����" />
                     		</form></td>
							</c:if>
							</c:if>
							
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