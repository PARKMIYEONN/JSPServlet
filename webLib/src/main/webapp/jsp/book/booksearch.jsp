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
    <h1>도서 검색</h1>
    <form action="booksearchprocess.do" method="POST">
        <div>
            <label for="title"></label>
            <input type="text" id="title" name="title">
            <input type="submit" value="검색">
        </div>
    </form>
    
    <c:choose>
        <c:when test="${empty sbook}">
            <!-- 버튼을 누르기 전에 해당 -->
            <p>검색 결과가 없습니다.</p>
        </c:when>
        <c:otherwise>
            <!-- 버튼을 누른 후에 해당 -->
            <table>
                <thead>
                    <tr>
                        <th>도서 번호	|</th>
                        <th>도서 제목	|</th>
                        <th>글 쓴 이	|</th>
                        <th>출 판 사	|</th>
                        <th>대출 여부	|</th>
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
                                        대출 중
                                    </c:when>
                                    <c:otherwise>
                                        대출 가능
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