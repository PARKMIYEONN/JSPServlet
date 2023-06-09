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
    <h1>���� �˻�</h1>
    <form action="booksearchprocess.do" method="POST">
        <div>
            <label for="title"></label>
            <input type="text" id="title" name="title">
            <input type="submit" value="�˻�">
        </div>
    </form>
    
    <c:choose>
        <c:when test="${empty sbook}">
            <!-- ��ư�� ������ ���� �ش� -->
            <p>�˻� ����� �����ϴ�.</p>
        </c:when>
        <c:otherwise>
            <!-- ��ư�� ���� �Ŀ� �ش� -->
            <table>
                <thead>
                    <tr>
                        <th>���� ��ȣ	|</th>
                        <th>���� ����	|</th>
                        <th>�� �� ��	|</th>
                        <th>�� �� ��	|</th>
                        <th>���� ����	|</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${sbook}">
                        <tr>
                            <td>${book.bookNO}</td>
                            <td>${book.bookTitle}</td>
                            <td>${book.bookWriter}</td>
                            <td>${book.bookPublisher}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${book.rented_book eq '1'}">
                                        ���� ��
                                    </c:when>
                                    <c:otherwise>
                                        ���� ����
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
</section>


	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>		