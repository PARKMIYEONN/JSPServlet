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
    <h1>대여 회원 목록</h1>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>회원 번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th>전화번호</th>
                <th>도서 번호</th>
                <th>도서 제목</th>
                <th>글 쓴 이</th>
                <th>출 판 사</th>
                <th>대 여 일</th>
                <th>반 납 일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ruser" items="${rentedusers}">
                <tr>
                    <td>${ruser.no}</td>
                    <td>${ruser.id}</td> 
                    <td>${ruser.name}</td>
                    <td>${ruser.phoneNo}</td>
                    <td>${ruser.bookNO}</td>
                    <td>${ruser.bookTitle}</td>
                    <td>${ruser.bookWriter}</td>
                    <td>${ruser.bookPublisher}</td>
                    <td>${ruser.rntDate}</td>
                    <td>${ruser.rtDate}</td>
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