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
            <h1>회원 목록</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>회원 번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>전화번호</th>
                        <th>생년월일</th>
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
        </div>
    </section>
    <footer>
        <div class="container">
            <%@ include file="/jsp/include/bottom.jsp" %>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>