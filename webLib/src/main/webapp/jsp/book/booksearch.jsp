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
    <div class="container">
        <h1>도서 검색</h1>
        <form action="booksearchprocess.do" method="POST">
            <div class="form-group">
                <label for="title">도서 제목</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            <button type="submit" class="btn btn-primary mb-4">검색</button>
        </form>
    </div>
    
            <div class="container">
    <c:choose>
        <c:when test="${empty sbook}">
            <p>검색 결과가 없습니다.</p>
        </c:when>
        <c:otherwise>
                <div class="row">
                    <c:forEach var="book" items="${sbook}">
                        <div class="col-md-4 mb-4">
                            <div class="card shadow">
                                <div class="card-body">
                                    <h5 class="card-title">${book.bookTitle}</h5>
                                    <p class="card-text">도서 번호: ${book.bookNO}</p>
                                    <p class="card-text">글 쓴 이: ${book.bookWriter}</p>
                                    <p class="card-text">출 판 사: ${book.bookPublisher}</p>
                                    <c:if test="${loginUser.no eq '1'}">
                                        <p class="card-text">
                                            <c:choose>
                                                <c:when test="${book.rented_book eq '1'}">
                                                    대출 여부: 대출 중
                                                </c:when>
                                                <c:otherwise>
                                                    대출 여부: 도서 보유 중
                                                </c:otherwise>
                                            </c:choose>
                                        </p>
                                    </c:if>
                                    <c:if test="${loginUser.no != '1'}">
                                        <c:choose>
                                            <c:when test="${book.rented_book eq '1'}">
                                                <p class="card-text">대출 여부: 대출 불가</p>
                                            </c:when>
                                            <c:otherwise>
                                                <form action="rentbook.do" method="POST">
                                                    <input type="hidden" name="bookNO" value="${book.bookNO}">
                                                    <input type="hidden" name="id" value="${loginUser.id}">
                                                    <input type="submit" class="btn btn-primary" value="대출하기">
                                                </form>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>
                                    <c:if test="${loginUser.no eq '1'}">
                                        <c:if test="${book.rented_book eq '0'}">
                                            <form action="deletebook.do" method="post" onsubmit="return confirm('삭제하시겠습니까?');">
                                                <input type="hidden" name="bookNO" value="${book.bookNO}" />
                                                <input type="submit" class="btn btn-danger" value="삭제" />
                                            </form>
                                        </c:if>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
        </c:otherwise>
    </c:choose>
            </div>
</section>




	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>		