<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ü ���� ���</title>
<link rel="stylesheet" href="/webLib/css/layout.css">
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"/>
	</header>
<section>
    <div class="container">
        <h1>���� ���</h1>
        <div class="row">
            <c:forEach var="book" items="${sbook}">
                <div class="col-md-4">
                    <div class="card mb-4 shadow">
                        <div class="card-body">
                            <h5 class="card-title">${book.bookTitle}</h5>
                            <p class="card-text">���� ��ȣ: ${book.bookNO}</p>
                            <p class="card-text">�� �� ��: ${book.bookWriter}</p>
                            <p class="card-text">�� �� ��: ${book.bookPublisher}</p>
                            <c:if test="${loginUser.no eq '1'}">
                                <p class="card-text">
                                    <c:choose>
                                        <c:when test="${book.rented_book eq '1'}">
                                            ���� ����: ���� ��
                                        </c:when>
                                        <c:otherwise>
                                            ���� ����: ���� ���� ��
                                        </c:otherwise>
                                    </c:choose>
                                </p>
                            </c:if>
                            <c:if test="${loginUser.no != '1'}">
                                <c:choose>
                                    <c:when test="${book.rented_book eq '1'}">
                                        <p class="card-text">���� ����: ���� �Ұ�</p>
                                    </c:when>
                                    <c:otherwise>
                                        <form action="rentbook.do" method="POST">
                                            <input type="hidden" name="bookNO" value="${book.bookNO}">
                                            <input type="hidden" name="id" value="${loginUser.id}">
                                            <input type="submit" class="btn btn-primary" value="�����ϱ�">
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </c:if>
                            <c:if test="${loginUser.no eq '1'}">
                                <c:if test="${book.rented_book eq '0'}">
                                    <form action="deletebook.do" method="post" onsubmit="return confirm('�����Ͻðڽ��ϱ�?');">
                                        <input type="hidden" name="bookNO" value="${book.bookNO}" />
                                        <input type="submit" class="btn btn-danger" value="����" />
                                    </form>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>



	<footer>
		<%@ include file="/jsp/include/bottom.jsp" %>
	</footer>
</body>
</html>
